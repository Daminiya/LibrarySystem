<%-- 
    Document   : addBook
    Created on : 08/08/2018, 9:50:45 AM
    Author     : Daminiya
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            * {
                box-sizing: border-box;
            }

            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                float: right;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }

            .col-25 {
                float: left;
                width: 25%;
                margin-top: 6px;
            }

            .col-75 {
                float: left;
                width: 75%;
                margin-top: 6px;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>
    </head>
    <body>
        <h2>ADD BOOK</h2>


        <div class="container">
            <%//=request.getAttribute("subclassificationList")%>
            <form action="addBookController" method="Post">
                <div class="row">
                    <div class="col-25">
                        <label for="BookId">Book Id</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="BookId" name="BookId" placeholder="Book Id..." value="${book.getBookId()}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="Title">Title</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="Title" name="Title" placeholder="Book Title..." value="${book.getTitle()}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="Author">Author</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="Author" name="Author" placeholder="Book Author..." value="${book.getAuthor()}">
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="Main Classification">Main Classification</label>

                    </div>
                    <div class="col-75">
                        <select class="form-control" name="mainClassification" value="${book.getMainClassification()}" onChange="selectvalue(form);">
                            <c:forEach  items="${mainclassificationList}" var="mainstatus">
                                <option value="${mainstatus}" <c:if test="${mainstatus eq book.getMainClassification()}">Selected="True"</c:if>>${mainstatus}</option>

                            </c:forEach>


                        </select>
                    </div>

                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="SubClassification">Sub Classification</label>
                    </div>
                    <div class="col-75">
                        <select class="form-control" name="subClassificationId" >
                            <c:forEach  items="${subclassificationList}" var="substatus">
                                <option value="${substatus}">${substatus}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="Year Of Publishing">Year Of Publishing</label>
                    </div>
                    <div class="col-75">
                        <select id="YofPublish" name="YofPublish" class="form-control">
                            <option value="-1">Select</option>
                            <%
                                for (int i = 1800; i < 2020; i++) {%>
                            <option value="<%=i%>"><%=i%></option>
                            <%}
                            %>
                        </select>                    </div>
                    <div class="row">
                        <div class="col-25">
                            <label for="Last Printed Year">Last Printed Year</label>
                        </div>
                        <div class="col-75">
                            <select id="LastPrintedYear" name="LastPrintedYear" class="form-control">
                                <option value="-1">Select</option>
                                <%
                                    for (int i = 1800; i < 2020; i++) {%>
                                <option value="<%=i%>"><%=i%></option>
                                <%}
                                %>
                            </select>       

                        </div>
                        <div class="row">
                            <div class="col-25">
                                <label for="ISBN NO">ISBN NO</label>
                            </div>
                            <div class="col-75">
                                <input type="text" id="ISBNNO" name="ISBNNO" placeholder="ISBN NO..." value="${book.getIsbnNo()}" >
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-25">
                                <label for="No Of Pages">No Of Pages</label>
                            </div>
                            <div class="col-75">
                                <input type="text" id="NoOfPages" name="NoOfPages" placeholder="No Of Pages..."  value="${book.getNoOfPages()}">
                            </div>
                        </div>

                        <div class="row">
                            <input type="submit" value="Submit">
                        </div>
                        </form>
                    </div>


                    </body>
                    <script>

                        function selectvalue(form) {
                            form.action = "ListController";
                            form.submit();
                        }

                    </script>
                    </html>

