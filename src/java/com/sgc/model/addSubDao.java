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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Daminiya
 */
public class addSubDao {
    Statement statement = null;
    public void saveSubClassification(addSubClassification asc) throws ClassNotFoundException, SQLException {
        dBConnection dbconnection = new dBConnection();
        Connection con = dbconnection.getdB();

        statement = con.createStatement();
        String sql = "insert into subclassification(`subClassificationId`,`subClassification`,`mainClassificationId`) values('" + asc.getSubClassificationId() + "','" + asc.getSubClassification() + "','" + asc.getSubClassificationId() + "')";

        statement.execute(sql);
    }

 public List subClassificationByMainClassificationId(String mainClassificationId){
     
     List<addSubClassification> subClassList = new ArrayList<>();
        try {
            dBConnection dbconnection = new dBConnection();
            Connection con = dbconnection.getdB();
            statement = con.createStatement();
            
            String sql = "SELECT * FROM mainclassification m "
                    + "inner join subclassification s "
                    + "ON m.mainClassificationId = s.mainClassificationId "
                    + "where mainclassification = 'science'";
            
            ResultSet rs = statement.executeQuery(sql);
            
            while(rs.next()){
                addSubClassification subClass = new addSubClassification();
                subClass.setSubClassificationId(rs.getString("subClassificationId"));
                subClass.setSubClassification(rs.getString("subClassification"));
                subClass.setMainClassificationId(rs.getString("mainClassification"));
                subClassList.add(subClass);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(addSubDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return subClassList;
 }
   
}
