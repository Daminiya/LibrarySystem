/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.model;

import com.sgc.data.dBConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Daminiya
 */
public class addMainDao {

    public void saveMainClassification(addMainClassification amc) throws ClassNotFoundException, SQLException {
        dBConnection dbconnection = new dBConnection();
        Connection con = dbconnection.getdB();

        Statement statement = con.createStatement();
        String sql = "insert into mainclassification(`mainClassificationId`,`mainClassification`) values('" + amc.getMainClassificationId() + "','" + amc.getMainClassification() + "')";

        statement.execute(sql);
    }

    public static List<addMainClassification> getMainClassific() throws SQLException {
        dBConnection dbConnection = new dBConnection();
        Connection con = dbConnection.getdB();
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("select * from mainclassification");
        List<addMainClassification> results = new ArrayList<>();
        while (rs.next()) {
            addMainClassification mainCla = new addMainClassification();
            mainCla.setMainClassification(rs.getString("title"));
            mainCla.setMainClassificationId(rs.getString("id"));
            results.add(mainCla);
        }
        return results;
    }
}
