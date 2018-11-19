<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: szerlag
  Date: 2018-11-19
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD PRODUCT</title>
</head>
<body>

<h5>ADD PRODUCT</h5>
<form:form action="addProduct" modelAttribute="product" method="post">
    <form:hidden path="id"></form:hidden>
<table>
    <tr>
       <td>Product Name:</td>
        <td><form:input path="product_name"/></td>
    </tr>
    <tr>
        <td>Count:</td>
        <td><form:input path="count"/></td>
    </tr>
    <tr>
        <td>Price:</td>
        <td><form:input path="price"/></td>
    </tr>
    <tr>
        <td>Manufacturer</td>
        <td><form:input path="manufacturer"/></td>
    </tr>
    <tr>
        <td><label></label></td>
        <td><input type="submit" value="Add" class="save" /></td>
    </tr>
</table>
</form:form>
</body>
</html>
