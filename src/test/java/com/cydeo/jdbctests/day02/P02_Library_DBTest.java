package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P02_Library_DBTest {
    //Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password ="6s2LQQTjBcGFfDhY";

    @Test

    public void task1() {
        DB_Util.createConnection(url, username, password);

        //Run Query
        DB_Util.runQuery("select count(*) from books");

        //get data from DB
        String expectedBookCountDB = DB_Util.getFirstRowFirstColumn();

        /*
        Assume that we get this info from UI with automation
         */

        //get data from UI
        String actualBookCountUI = "3963";


        /*
        Actual --> UI---> since data comes from database with help backend.
                    There can be problem while we are finding data to UI.
                    That's why we do the DB testing

        Expected--> DB--> UI needs to get data from database as it is.
                    So we need to actual(UI) vs expected(DB)
         */



        //we will get exception that's why we will add dependency for my sql.
        //compare
        Assertions.assertEquals(expectedBookCountDB, actualBookCountUI);



        //close the session
        DB_Util.destroy();

    }
}
