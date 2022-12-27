package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {
        String dbURL = "jdbc:oracle:thin:@54.167.16.165:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

/*
HOW to INIT variables?
mac--opt+enter
 */
        //DriverManager class getConnections method will help to connect database
        Connection conn = DriverManager.getConnection(dbURL, dbUsername, dbPassword);

        // it helps us to execute queries
        Statement statement = conn.createStatement();

        // ResultSet will store data after execution. It stores only data(there is no table info)
        ResultSet resultSet = statement.executeQuery("select * from REGIONS");


        //Getting DATA
        //next() ---> moves the cursor forward one row from its current position

        resultSet.next();

        //pointer shows the first row

        //how to get data

        //resultSet.getInt(index) --> it returns integer. Index start from 1 into SQL. It refers colimn position
        System.out.println(resultSet.getInt(1));//1


        //it returns String
        System.out.println(resultSet.getString(1));//1


        System.out.println(resultSet.getInt("REGION_ID"));//1
        System.out.println(resultSet.getString("REGION_ID"));//1


        //get me Europe
//        System.out.println("----------------1st row----------------------");
//        System.out.println(resultSet.getString("REGION_NAME"));//Europe
//        System.out.println(resultSet.getString(2));//europe
//
//
//        //2 second row 2-Americas
//        System.out.println("----------------2nd row----------------------");
//        resultSet.next();
//        System.out.println(resultSet.getString(1) +"-"+ resultSet.getString(2));
//        System.out.println(resultSet.getString("REGION_ID") + "-" + resultSet.getString("REGION_NAME")); //region ide represents the first column, the region name represents the second column.
//
//
//        //3 row 3-Asia
//        System.out.println("----------------3rd row----------------------");
//        resultSet.next();
//        System.out.println(resultSet.getString(1) +"-"+ resultSet.getString(2));// one in here represents first column, 2 represents the second column
//        System.out.println(resultSet.getString("REGION_ID") + "-" + resultSet.getString("REGION_NAME"));
//
//        //4 row 4-Middle East and Africa
//        System.out.println("----------------4th row----------------------");
//        resultSet.next();
//        System.out.println(resultSet.getString(1) +"-"+ resultSet.getString(2));// one in here represents first column, 2 represents the second column
//        System.out.println(resultSet.getString("REGION_ID") + "-" + resultSet.getString("REGION_NAME"));



        //we will print while loop results
        while(resultSet.next()){
            System.out.println("----------------------------");
            System.out.println(resultSet.getString(1) + " - " + resultSet.getString(2));
        }

        //close connection
        resultSet.close();
        statement.close();
        conn.close();


    }

}
