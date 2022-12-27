package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListOfMaps {
    String dbUrl = "jdbc:oracle:thin:@54.167.16.165:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() {

        Map<String,Object> rowMap1=new HashMap<>();

        System.out.println("----ROW MAP 1 ");
        rowMap1.put("first_name","Steven");
        rowMap1.put("last_name","King");
        rowMap1.put("salary",24000);

        System.out.println(rowMap1);


        Map<String,Object> rowMap2=new HashMap<>();

        System.out.println("----ROW MAP 2 ");
        rowMap2.put("first_name","Neena");
        rowMap2.put("last_name","Kocchar");
        rowMap2.put("salary",17000);
        System.out.println(rowMap2);


        /**
         *
         * It will continue till the end of the List
         * Assume that we have 107 map
         * Create an ArrayList and put all Maps into List
         */

        List<Map<String,Object>> dataList=new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        // give me last name of Steven
        System.out.println(dataList.get(0).get("last_name"));

    }


    @Test
    public void task2() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees");



        ResultSetMetaData rsmd = rs.getMetaData();//to get info from table column.

        // to jump first row
        rs.next();
        Map<String,Object> rowMap1=new HashMap<>();

        System.out.println("----ROW MAP 1 ");
        rowMap1.put(rsmd.getColumnName(1), rs.getString("Steven"));// burdaki ilk 1 numara firstname, ikinci 1 numara steven
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));// ilk 2 numara, lastname, ikinci 2 numara king
        rowMap1.put(rsmd.getColumnName(3),rs.getInt(3));//ilk 3 numara salary, ikinci 3 numara 24,000

        System.out.println(rowMap1);



        rs.next();
        Map<String,Object> rowMap2=new HashMap<>();

        System.out.println("----ROW MAP 2 ");
        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3),rs.getInt(3));

        System.out.println(rowMap2);

        /**
         *
         * It will continue till the end of the List
         * Assume that we have 107 map
         * Create an ArrayList and put all Maps into List
         */

        List<Map<String,Object>> dataList=new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        // give me last name of Steven
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));


        // close connections
        rs.close();
        statement.close();
        conn.close();

    }

    @Test

    public void test3() throws SQLException {
        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees");

        ResultSetMetaData rsmd = rs.getMetaData();//to get info from table column.


        List<Map<String, Object>> dataList = new ArrayList<>();

        //iterate each row dynamically
         while(rs.next()){//while our next row exist, it will keep iterate

             Map<String, Object> rowMap= new HashMap<>(); //we created empty map.
             for (int i = 1; i <= rsmd.getColumnCount(); i++) {//baska column kalmayinca for i block'tan cikip dataList'e
                 //ekliyoruz, sonra tekrar while loop'a gidiyoruz, eger row varsa bu stepleri tekrarliyoruz
                 rowMap.put(rsmd.getColumnName(i), rs.getString(i));
                 //i=1 rowMap.put("first_name", "Ellen");
                 //i=2 rowMap.put("last_name", "Abel");
                 //i=3 rowMap.put("salary", "11000");

             }
             dataList.add(rowMap);
         }
        System.out.println("------ALL DATA-------");
         for(Map<String, Object> eachRowMap : dataList){
             System.out.println(eachRowMap);
         }


        // close connections
        rs.close();
        statement.close();
        conn.close();
    }
}
