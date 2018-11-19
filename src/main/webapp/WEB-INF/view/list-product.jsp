<%--
  Created by IntelliJ IDEA.
  User: szerlag
  Date: 2018-11-14
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Work</title>
    <h3>HELLO SPRING!</h3>
    <core:forEach var="product" items="${productList}">
        ${product.getProduct_name()}<br>
    </core:forEach>
</head>
<input type="button" value="Add Product"
       onclick="window.location.href='showAddProduct'; return false;"
<body>

</body>
</html>
