package org.serv_layer;

import java.sql.Connection;
import java.sql.SQLException;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        DatabaseConnectionManager dcm = new DatabaseConnectionManager("localhost",
                "cooperate", "postgres", "password");
        try {
            Connection connection = dcm.getConnection();
            UserDao userDao = new UserDao(connection);
            User user = userDao.findById("sam123");
            System.out.println(user);

        }
        catch(SQLException e) {
            e.printStackTrace();
        }
    }
}


/*
create User class
initialized with username
getters and setters (karma, password for authentication, etc.)
Methods:
Like (review_id, reaction) reaction is -1 or 1

create an entry in Like table
update karma of the user associated who posted the review
update net likes of course id

post(course_id, prof_id, description, prof_rating, course_rating)

create an entry in Reviews table
 */