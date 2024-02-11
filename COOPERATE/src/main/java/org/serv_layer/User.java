package org.serv_layer;

import java.sql.Timestamp;

public class User implements DataTransferObject{

        private int id;
        private String userName;
        private String password;

        private String email;
        private int karma;

        private Timestamp timestamp;

        public int getId() {return id;}

        public void setId(int id) {this.id = id;}

        public String getUserName() {return userName;}
        public void setUserName(String userName) {
            this.userName = userName;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public int getKarma(){
            return karma;
        }

        public void setKarma(int karma){
            this.karma = karma;
        }

        public Timestamp getTimestamp(){
            return timestamp;
        }

        public void setTimestamp(Timestamp timestamp){
            this.timestamp = timestamp;
        }

        @Override
        public String toString() {
            return "User{" +
                    ", userName='" + userName + '\'' +
                    ", password='" + password + '\'' +
                    ", email='" + email + '\'' +
                    ",karma='" + karma + '\'' +
                    ",created_at='" + timestamp +
                    '}';
        }
}