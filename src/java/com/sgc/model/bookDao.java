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
public class bookDao {

    public void saveBook(addBook bk) throws ClassNotFoundException, SQLException {
        dBConnection dbconnection = new dBConnection();
        Connection con = dbconnection.getdB();

        Statement statement = con.createStatement();
        String sql = "insert into bookdetails(`bookId`,`title`,`author`,`mainClassification`,`subClassification`,`yearOfPublishing`,`lastPrintedYear`,`ISBNNo`,`noOfPages`) values('" + bk.getBookId() + "','" + bk.getTitle() + "','" + bk.getAuthor() + "','" + bk.getMainClassification() + "','" + bk.getSubClassification() + "','" + bk.getYearOfPublishing() + "','" + bk.getLastPrintedYear() + "','" + bk.getIsbnNo() + "','" + bk.getNoOfPages() + "')";

        statement.execute(sql);
    }
    
    
    public List M_name(){
         List<String> classificationList=new ArrayList<>();
        try{ 
            dBConnection dbconnection = new dBConnection();
        Connection con = dBConnection.getdB();
        
      
        //System.out.print("kowsik");
        String query="select mainClassification from mainclassification ";
        Statement stmt = con.createStatement();
       ResultSet rs= stmt.executeQuery(query);
       
            while (rs.next()) {
               classificationList.add(rs.getString("mainClassification"));
                System.out.println("test"+rs.getString("mainClassification"));
            }
            
        }
       
        
             
      catch(SQLException e)
       {
           System.out.println(e.toString());
       }
       
    return classificationList;
    }
    public List S_name(){
         List<String> classificationList=new ArrayList<>();
        try{ 
            dBConnection dbconnection = new dBConnection();
        Connection con = dbconnection.getdB();
        
      
        //System.out.print("kowsik");
        String query="select subClassification from subclassification ";
        Statement stmt = con.createStatement();
       ResultSet rs= stmt.executeQuery(query);
       
            while (rs.next()) {
               classificationList.add(rs.getString("subClassification"));
                System.out.println("test"+rs.getString("subClassification"));
            }
            
        }
       
        
             
      catch(SQLException e)
       {
           System.out.println(e.toString());
       }
       
    return classificationList;
    }
   public List Subclassificationname(String mname){
        List<String> subclassificationList=new ArrayList<>();
        try{    
        dBConnection dbconnection = new dBConnection();
        Connection c =dBConnection.getdB();
        //System.out.print("kowsik");
        String query="select subClassification from subclassification sc join mainclassification mc on sc.mainClassificationId=mc.mainClassificationId where mainclassification='"+mname+"'";
        Statement stmt = c.createStatement();
        
       ResultSet rs= stmt.executeQuery(query);
       
       
            while (rs.next()) {
               subclassificationList.add(rs.getString("subClassification"));
                System.out.println("test"+rs.getString("subClassification"));
            }
            
        }
             
      catch(SQLException e)
       {
           System.out.println(e.toString());
       }
       
    return subclassificationList;  
     }          
    
}



