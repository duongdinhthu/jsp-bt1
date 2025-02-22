<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.project.bt1.Product" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Product> products = (List<Product>) application.getAttribute("products");
    Product product = null;
    for (Product p : products) {
        if (p.getId() == id) {
            product = p;
            break;
        }
    }

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        product.setName(request.getParameter("name"));
        product.setPrice(Double.parseDouble(request.getParameter("price")));
        product.setDescription(request.getParameter("description"));
        response.sendRedirect("index.jsp");
    }
%>

<html>
<head><title>Sửa sản phẩm</title></head>
<body>
<h2>Sửa sản phẩm</h2>
<form method="post">
    ID: <input type="text" name="id" value="${param.id}" readonly><br>
    Tên: <input type="text" name="name" value="${product.name}" required><br>
    Giá: <input type="text" name="price" value="${product.price}" required><br>
    Mô tả: <input type="text" name="description" value="${product.description}"><br>
    <input type="submit" value="Cập nhật">
</form>
<br>
<a href="index.jsp">Quay lại</a>
</body>
</html>
