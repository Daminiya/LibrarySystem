<%-- 
    Document   : addSubClassification
    Created on : 08/08/2018, 5:27:07 PM
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

        <form action="addSubController" method="Post">
            <table>

                <tr><th>SubClassification Id<th><th> <input type="text" name="subClassificationId" value=""></th></tr>
                <tr><th>&nbsp;<th></tr>
                <tr><th>SubClassification<th><th> <input type="text" name="subClassification" value=""></th></tr>
                <tr><th>&nbsp;<th></tr>
                <tr><th>Main Classification<th><th><select></select></th></tr>
                <tr><th>&nbsp;<th></tr>
                <tr><th> <input type="submit" value="Add" id="add"/> </th>
                    <th> <input type="submit" value="Close" id="Close" /> </th></tr>

            </table>
        </form>
    </body>
</html>
