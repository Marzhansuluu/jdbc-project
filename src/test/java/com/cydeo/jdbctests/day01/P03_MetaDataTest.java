package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {
    String dbURL = "jdbc:oracle:thin:@54.167.16.165:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {
        //DriverManager class getConnections method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        //ResultSet.TYPE_SCROLL_INSENSITIVE-->to do flexible navigation btw rows
        //ResultSet.CONCUR_READ_ONLY-->to don't update anything from database


        // ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");


        //DatabaseMetaDate---> it is info about database itself
        DatabaseMetaData dbMetaData = conn.getMetaData();



        System.out.println("dbMetaData.getUserName() = " + dbMetaData.getUserName());
        System.out.println("dbMetaData.getDatabaseProductName() = " + dbMetaData.getDatabaseProductName());
        System.out.println("dbMetaData.getDatabaseProductVersion() = " + dbMetaData.getDatabaseProductVersion());
        System.out.println("dbMetaData.getDriverMajorVersion() = " + dbMetaData.getDriverMajorVersion());
        System.out.println("dbMetaData.getDriverName() = " + dbMetaData.getDriverName());
        System.out.println("dbMetaData.getDriverVersion() = " + dbMetaData.getDriverVersion());
        
        
        //ResultSetMetaData ---> it provides info about table upper side(columnNames, columnCount)
        ResultSetMetaData rsmd = rs.getMetaData();


        //How many column we have
        int columnCount  = rsmd.getColumnCount();
        System.out.println(columnCount);




        // get me column name from index 3
        System.out.println(rsmd.getColumnName(3));
        // it will return provided columnIndex name

        //print all column names individually
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(rsmd.getColumnName(i));
        }

        /*
        HOW TO GET DATA DYNAMICALLY FOR QUERIES
        ResultSet -----> It holds table data
            rs.next() ---> to iterate each row dynamically

            rs.getString(index) -->to get data from specified column
            rs.getString(ColumnName)

        ResultSetMetaData --> it holds table info(column Name, Column Count
            rsmd.getColumnName()---> it will give specified columnName
            rsmd.getColumnCount() -->it iwll give how mnay column we have
         */


        // PRINT TABLE CONTENT DYNAMICLY


        System.out.println("----- PRINT ALL DATA DYNAMIC ----- ");
        // EMPLOYEE_ID - 1
        // FIRST_NAME  - Steven
        // iterate each row
        while(rs.next()){

            // iterate each column
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.print(rsmd.getColumnName(i)+"-"+rs.getString(i)+" ");
            }
            System.out.println();
        }






//close connection
        rs.close();
        statement.close();
        conn.close();

    }
}
