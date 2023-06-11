<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.eBookManagementSytem.models.Cart" %>
<%@ page import="com.eBookManagementSytem.models.Mobiles" %>
<html>
<head>
    <title>Cart</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <table>
        <!-- Table headers -->
        <thead>
            <tr>
                <th>ID</th>
                <th>Product name</th>
                <th>Model Name</th>
                <th>Product price</th>
                <th>Product Quantity</th>
                <th>Product Description</th>
            </tr>
        </thead>
        <tbody>
            <!-- Table rows -->
            <% 
            
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart != null) {
                List<Mobiles> items = cart.getItems();
                for (Mobiles m : items){
            %>
            <tr>
                <td><%=  m.getId() %></td> 
                <td><%= m.getProdname() %></td>
                <td><%= m.getModelname() %></td>
                <td><%= m.getProdprice() %></td>
                <td><%= cart.getQuantity(m) %></td>
                <td><%= m.getProddesc() %></td>
            </tr>
            
            <% 
                }
            } else {
            %>
            <tr>
                <td colspan="6">Cart is empty.</td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
    <a href="placeorders">Place Order</a>
</body>
</html>
