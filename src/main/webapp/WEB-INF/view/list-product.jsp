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
    <table>
        <tr>
            <th>
                NAME:
            </th>
            <th>
                COUNT:
            </th>
            <th>
                PRICE:
            </th>
            <th>
                MANUFACTURER:
            </th>
        </tr>
    <core:forEach var="product" items="${productList}">
            <tr>
            <td>
                ${product.getProduct_name()}
            </td>
            <td>
                    ${product.getCount()}
            </td>
            <td>
                    ${product.getManufacturer()}
            </td>
            <td>
                    ${product.getPrice()}
            </td>
            </tr>

    </core:forEach>
    </table>
</head>
<input type="button" value="Add Product"
       onclick="window.location.href='showAddProduct'; return false;"
<body>

</body>
</html>
