package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02FlexibleNavigation {
    String dbURL = "jdbc:oracle:thin:@54.167.16.165:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";

    @Test
    public void task1() throws SQLException {
        //DriverManager class getConnections method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        //ResultSet.TYPE_SCROLL_INSENSITIVE-->to do flexible navigation btw rows
        //ResultSet.CONCUR_READ_ONLY-->to don't update anything from database



        // ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select FIRST_NAME, LAST_NAME from EMPLOYEES");


        //first row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        //second row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        //what if I want to get the last data
        rs.last();
        System.out.println(rs.getString(1) +" "+ rs.getString(2));


        System.out.println("--------Get row-----------");
        //how many row we have
        //getRow()--> the current row number; 0 if there is no current row

        int rowNumber = rs.getRow();
        System.out.println(rowNumber);

        System.out.println();



        System.out.println("--- ABSOLUTE  -----");
        // jump into specified row
        //rs.absolute(rowNumber) -->true if the cursor is moved to a position in this ResultSet object; false if the cursor is before the first row or after the last row
        rs.absolute(10);  // David Bernstein
        System.out.println(rs.getString(1)+" "+rs.getString(2));
        System.out.println(rs.getRow());   // 10


        System.out.println();
        System.out.println("--- PREVIOUS   -----");
        // rs.previous()
        rs.previous();  // --> true if the cursor is now positioned on a valid row; false if the cursor is positioned before the first row
        System.out.println(rs.getRow());   // 9
        System.out.println(rs.getString(1)+" "+rs.getString(2));


        //rs.first()--->jump to the first row
        rs.first();

        //rs.beforeFirst() --> jump to the before first row.
        rs.beforeFirst();//




        System.out.println();
        System.out.println("-------------PRINT ALL TABLE CONTENT DINAMICALLY");
        while (rs.next()){
            System.out.println(rs.getString(1)+" "+ rs.getString(2));
        }


        //close connection
        rs.close();
        statement.close();
        conn.close();

    }


}
