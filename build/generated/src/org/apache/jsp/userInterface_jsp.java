package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userInterface_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Library System</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <style>\n");
      out.write("            ul {\n");
      out.write("                list-style-type: none;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: LightGray;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li {\n");
      out.write("                float: left;\n");
      out.write("                border-right:1px solid #bbb;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li:last-child {\n");
      out.write("                border-right: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a {\n");
      out.write("                display: block;\n");
      out.write("                color: white;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            li a:hover:not(.active) {\n");
      out.write("                background-color:LightBlue;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .active {\n");
      out.write("                background-color: B#4CAF50;\n");
      out.write("            }\n");
      out.write("            .dropdown-content {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color:white;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("            .dropdown-content a {\n");
      out.write("                color:Blue;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                text-align: left;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-content a:hover {background-color: #f1f1f1}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropdown-content {\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h1 {\n");
      out.write("                text-shadow: 3px 2px blue;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <B><h1><center>Library Management System</center></h1></B>\n");
      out.write("        <ul>\n");
      out.write("\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                <a href=\"javascript:void(0)\" class=\"#Book\">Book</a>\n");
      out.write("                <a href=\"#Classification\"Book</a>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a href=\"Classificationcontroller\">AddBook</a>\n");
      out.write("                    \n");
      out.write("                    <a href=\"./search.jsp\">Search Book</a>\n");
      out.write("                    <a href=\"./editBook.jsp\">Edit Book</a>\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                <a href=\"javascript:void(0)\" class=\"#Classification\">Classification</a>\n");
      out.write("                <a href=\"#Classification\"Classification</a>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                    <a href=\"./mainClassification.jsp\">Main Classification</a>\n");
      out.write("\n");
      out.write("                    <a href=\"./subClassification.jsp\">Sub Classification</a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
