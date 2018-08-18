<%-- 
    Document   : search
    Created on : 4-Aug-2018, 4:37:15 PM
    Author     : kowsi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<style>
p, h3 {
    padding: 9px;
    text-align: left;
    color:blue;
}
</style>
<form action="//www.html.am/html-codes/forms/html-form-tag-action.cfm" target="result2" method="get">

<p>What would you like for Search?</p>

<input type="text" name="bookId" value="">
<select name="example">
    <option value="bookId">BookId</option>
    <option value="title">Title</option>
    <option value="author">Author</option>
    <option value="mainClassification">Main Classification</option>
	<option value="subClassification">Sub Classification</option>
	<option value="yearOf Publishing">Year Of Publishing</option>
    <option value="lastPrintedYear">Last Printed Year</option>
    <option value="isbnNo">ISBN No</option>
	<option value="NnoOfPages">No Of Pages</option>
</select>
<input type="submit" value="Search"></p>





</form>
<h3>Result:</h3>
<iframe name="result2" style="height:100px;width:200px;"></iframe>
</body>
</html>
