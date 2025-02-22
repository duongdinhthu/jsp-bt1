<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.project.bt1.Product" %>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");

        List<Product> products = (List<Product>) application.getAttribute("products");
        products.add(new Product(id, name, price, description));
        application.setAttribute("products", products);

        response.sendRedirect("index.jsp");
    }
%>

<html>
<head><title>Thêm sản phẩm</title></head>
<body>
<h2>Thêm sản phẩm</h2>
<form method="post">
    ID: <input type="text" name="id" required><br>
    Tên: <input type="text" name="name" required><br>
    Giá: <input type="text" name="price" required><br>
    Mô tả: <input type="text" name="description"><br>
    <input type="submit" value="Thêm sản phẩm">
</form>
<br>
<a href="index.jsp">Quay lại</a>
</body>
</html>
