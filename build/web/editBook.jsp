<%-- 
    Document   : editBook
    Created on : 4-Aug-2018, 4:38:10 PM
    Author     : kowsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<hthml>

<style>

th, td {
    padding: 5px;
    text-align: left;
    color:blue;
}
</style>
<body>
<table>
<tr>
<th>
<form action="//www.html.am/html-codes/forms/html-form-tag-action.cfm" target="result2" method="get">

<p>What would you like for Search?</p>

<input type="text" name="bookId" value="">
<select name="example">
    <option value="bookId">BookId</option>
    <option value="title">Title</option>
    <option value="author">Author</option>
    
</select>
<input type="submit" value="Search"></p>
</form>
<h3>Result:</h3>
<iframe name="result2" style="height:200px;width:200px;"></iframe>
</th>

<th>
<table>
<tr><th>BookId<th><th> <input type="text" name="bookId" value=""></th></tr>
<tr><th>Title<th><th> <input type="text" name="title" value=""></th></tr>
<tr><th>Author<th><th> <input type="text" name="author" value=""></th></tr>
<tr><th>Main Classification<th><th> <input type="text" name="mainClassification" value=""></th></tr>
<tr><th>Sub Classification<th><th> <input type="text" name="subClassification" value=""></th></tr>
<tr><th>Year Of Publishing<th><th> <input type="text" name="yearOfPublishing" value=""></th></tr>
<tr><th>Last Printed Year<th><th> <input type="text" name="lastPrintedYear" value=""></th></tr>
<tr><th>ISBN No<th><th> <input type="text" name="isbnNo" value=""></th></tr>
<tr><th>No Of Pages<th><th> <input type="text" name="noOfPages" value=""></th></tr>
<p>
<tr><th> <input type="submit" value="Edit" id="edit"/> </th><th> <input type="submit" value="Close" id="close"/> </th><tr>
</table>
</th>
</tr>
<table>


</body>
</html>

