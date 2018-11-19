<%--
  Created by IntelliJ IDEA.
  User: szerlag
  Date: 2018-11-14
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <c:url var="updateLink" value="/product/showUpdateProduct">
            <core:param name="productId" value="${product.getId()}"/>
        </c:url>
        <c:url var="deleteLink" value="/product/deleteProduct">
            <core:param name="productId" value="${product.getId()}"/>
        </c:url>
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
                <td>
                    <!-- display the update link -->
                    <a href="${updateLink}">Update</a>
                    |
                    <a href="${deleteLink}"
                       onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                </td>
            </tr>

    </core:forEach>
    </table>
</head>
<input type="button" value="Add Product"
       onclick="window.location.href='showAddProduct'; return false;"/>
<body>

</body>
</html>
