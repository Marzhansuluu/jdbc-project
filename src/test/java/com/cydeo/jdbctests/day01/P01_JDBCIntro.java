package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {
    /*
    cmnd+N to create test method.
     */

    String dbURL = "jdbc:oracle:thin:@54.167.16.165:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";
    @Test
  public  void task() throws SQLException {

        //DriverManager class getConnections method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where MANAGER_ID is null");



        //Administration-200-1700

        while(rs.next()){
            System.out.println(rs.getString(1) +"-"+rs.getString(2)+
                    "-"+rs.getString(4));
        }

        rs = statement.executeQuery("select * from regions");
        rs.next();

        //it will return int
        System.out.println(rs.getInt(1));// it will return the 1.

        //it will return String
        System.out.println(rs.getString(1)); //it will return 1

        //rs.getInt(columnLabel)
        System.out.println(rs.getInt("REGION_ID")); //1
        System.out.println(rs.getString("REGION_ID"));//1
        System.out.println(rs.getString("REGION_NAME"));//europe


        // 1-Europe
        // 2-Americas
        // 3-Asia

        //get me Europe
        System.out.println(rs.getString(2));
        System.out.println(rs.getString("REGION_NAME"));


        rs.next();
        //2-SECOND ROW 2-Americas
        System.out.println(rs.getInt(1) + "-" + rs.getString(2));// it will print me 2-Americas
        System.out.println(rs.getString("REGION_ID") + " - " + rs.getString("REGION_NAME"));


        // 2-THIRD ROW 3-Asia
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2)); //it will pritn 3-Asia
        System.out.println(rs.getString("REGION_ID") + " - " + rs.getString("REGION_NAME"));



        // get me all query results dynamically
        System.out.println("----- SECOND QUERY ------");
        while(rs.next()){

            System.out.println(rs.getString(1)+"-"+rs.getString(2));
            //System.out.println(rs.getString("REGION_ID")+"-"+rs.getString("REGION_NAME"));
        }




        //close connection
        rs.close();
        statement.close();
        conn.close();


    }
}
