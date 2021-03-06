package DAL;

import java.sql.*;
import java.util.*;

public class MyConnection {
    final String DB_DRIVER = "oracle.jdbc.driver.OracleDriver";
    private final Connection conn;

    public MyConnection(String username, String password, String url) throws SQLException {
        try {
            Class.forName(DB_DRIVER);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        TimeZone timeZone = TimeZone.getTimeZone("GMT+7");
        TimeZone.setDefault(timeZone);
        Locale.setDefault(Locale.ENGLISH);

        Properties DB_PROPS = new Properties();
        DB_PROPS.setProperty("user", username);
        DB_PROPS.setProperty("password", password);
        conn = DriverManager.getConnection(url, DB_PROPS);
    }

    public void close() throws SQLException {
        conn.close();
    }

    public Connection getConnection(){
        return conn;
    }
}
