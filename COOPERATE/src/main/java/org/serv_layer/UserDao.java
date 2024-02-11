package org.serv_layer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends DataAccessObject<User>{

    private static final String GET_ONE = "SELECT user_id, hashed_password " +
            "FROM Users WHERE user_id=?";

    public UserDao(Connection connection) {
        super(connection);
    }

    @Override
    public User findById(String id){
        User user = new User();
        try(PreparedStatement statement = this.connection.prepareStatement(GET_ONE);) {
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while(rs.next()) {
                user.setUserName(rs.getString("user_id"));
                user.setPassword(rs.getString("hashed_password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return user;
    }
}