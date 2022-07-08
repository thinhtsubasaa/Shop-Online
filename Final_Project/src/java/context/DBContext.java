/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Trong Thinh
 */
public class DBContext {

    private final String severName = "LAPTOP-LTH9NULN\\SQLEXPRESS";
    private final String dbName = "Final_Project";
    private final String portNumbber = "1433";
    private final String instance = "";
    private final String userID = "sa";
    private final String password = "1234";

    public Connection getConnection() throws Exception {
        System.out.println("context.DBContext.getConnection()");
        String url = "jdbc:sqlserver://" + severName + ":" + portNumbber + "\\" + instance + ";databaseName=" + dbName;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + severName + ":" + portNumbber + ";databaseName=" + dbName;
        }
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }

   
}
