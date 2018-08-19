/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sgc.controller;

import com.sgc.model.addBook;
import com.sgc.model.bookDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Daminiya
 */
@WebServlet(name = "ListController", urlPatterns = {"/ListController"})
public class ListController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ListController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        addBook ab = new addBook();
        
        ab.setBookId(request.getParameter("BookId"));
        ab.setTitle(request.getParameter("Title"));
        ab.setAuthor(request.getParameter("Author"));
        ab.setMainClassification(request.getParameter("MainClassification"));
        ab.setSubClassification(request.getParameter("SubClassification"));
        ab.setYearOfPublishing(request.getParameter("YearOfPublishing"));
        ab.setLastPrintedYear(request.getParameter("LastPrintedYear"));
        ab.setIsbnNo(request.getParameter("ISBNNO"));
        ab.setNoOfPages(request.getParameter("NoOfPages"));
        
     request.setAttribute("book", ab);   
        
        
        String mname=request.getParameter("mainClassification");
        bookDao b=new bookDao();
       List x= b.Subclassificationname(mname);
       List y=b.M_name();
       request.setAttribute("subclassificationList", x);
       request.setAttribute("mainclassificationList", y);
       ServletContext context=getServletContext();
        RequestDispatcher rd=context.getRequestDispatcher("/addBook.jsp");
        rd.forward(request, response);
        //processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
