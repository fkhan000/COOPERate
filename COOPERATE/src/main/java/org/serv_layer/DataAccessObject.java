package org.serv_layer;

import java.sql.*;

public abstract class DataAccessObject <T extends DataTransferObject> {

    protected final Connection connection;
    protected final static String LAST_VAL = "SELECT last_value FROM ";
    //protected final static String USER_SEQUENCE = "player_seq";

    public DataAccessObject(Connection connection){
        super();
        this.connection = connection;
    }
    public abstract T findById(String id);

    public abstract T create(T dto);
}