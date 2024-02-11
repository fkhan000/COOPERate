package org.serv_layer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao extends DataAccessObject<User>{

    private static final String GET_ONE = "SELECT * " +
            "FROM Users WHERE id=?";

    private static final String INSERT = "INSERT INTO users (id, hashed_password, email_address)" +
            " VALUES (?, ?, ?)";

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
                user.setUserName(rs.getString("id"));
                user.setPassword(rs.getString("hashed_password"));
                user.setEmail(rs.getString("email_address"));
                user.setKarma(rs.getInt("karma"));
                user.setTimestamp(rs.getTimestamp("created_at"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return user;
    }
    @Override
    public User create(User dto) {
        try(PreparedStatement statement = this.connection.prepareStatement(INSERT);) {
            // counts from 1!!
            statement.setString(1, dto.getId());
            statement.setString(2, dto.getPassword());
            statement.setString(3, dto.getEmail());
            statement.execute();
            return this.findById(dto.getId());
        } catch(SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }


}