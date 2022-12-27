package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.Map;

public class P01_DBUtilPractice {


    @Test

    public void task1() {

        //create a connection
        DB_Util.createConnection();

        //run query
        DB_Util.runQuery("select first_name, last_name, salary from employees");

        //get results. GET ME FIRST ROW FIRST CELL
        System.out.println("----------Get first row and first cell");
        System.out.println(DB_Util.getFirstRowFirstColumn());

        //get all the columns name
        System.out.println("-----------get all columns name");
        System.out.println(DB_Util.getAllColumnNamesAsList());


        //GET all first names
        System.out.println("----------get all first name");
        //System.out.println(DB_Util.getColumnDataAsList(1));
        System.out.println(DB_Util.getColumnDataAsList("first_name"));


        //get me how many row we have
        System.out.println("---------get all the row we have");
        System.out.println(DB_Util.getRowCount());


        System.out.println("-------------get me certain row as a map");
        System.out.println(DB_Util.getRowMap(2));

        System.out.println("--------------Get me certain row as a list");
        System.out.println(DB_Util.getRowDataAsList(2));

        System.out.println("----------------GET ME ALL DATA A LIST OF MAP");
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();
        for(Map<String, String> eachRowMap: allRowAsListOfMap){
            System.out.println(eachRowMap);
        }



        //close connection
        DB_Util.destroy();

    }
}
