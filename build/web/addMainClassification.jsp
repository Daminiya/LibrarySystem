<%-- 
    Document   : addMainClassification
    Created on : 11/08/2018, 11:51:16 AM
    Author     : Daminiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        th, td {
            padding: 5px;
            text-align: left;
            color:blue;
        }
    </style>
    <body>
        <form action="addMainController" method="Post">

            <table>
                <tr><th>MainClassification Id<th><th> <input type="text" name="mainClassificationId" value=""></th></tr>
                <tr><th>&nbsp;<th></tr>
                <tr><th>MainClassification<th><th> <input type="text" name="mainClassification" value=""></th></tr>
                <tr><th>&nbsp;<th></tr>
                <tr><th> <input type="submit" value="Add" id="add"/> </th>
                    <th> <input type="submit" value="Close" id="Close"/> </th></tr>
        </form>
    </table>
</body>
<a href="addMainClassification.jsp"></a>
</html>
