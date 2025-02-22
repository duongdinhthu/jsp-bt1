<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, com.project.bt1.Product" %>

<%
    List<Product> products = (List<Product>) application.getAttribute("products");
    if (products == null) {
        products = new ArrayList<>();
        products.add(new Product(1, "Laptop", 1000, "Máy tính xách tay cao cấp"));
        products.add(new Product(2, "Chuột", 20, "Chuột không dây"));
        application.setAttribute("products", products);
    }
%>

<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h2>Danh sách sản phẩm</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên</th>
        <th>Giá</th>
        <th>Mô tả</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="p" items="${applicationScope.products}">
        <tr>
            <td>${p.id}</td>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>${p.description}</td>
            <td>
                <a href="edit.jsp?id=${p.id}">Sửa</a> |
                <a href="delete.jsp?id=${p.id}">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="add.jsp">Thêm sản phẩm</a>
</body>
</html>
