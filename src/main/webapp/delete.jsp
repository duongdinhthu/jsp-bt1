<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, com.project.bt1.Product" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Product> products = (List<Product>) application.getAttribute("products");
    products.removeIf(p -> p.getId() == id);
    application.setAttribute("products", products);
    response.sendRedirect("index.jsp");
%>
