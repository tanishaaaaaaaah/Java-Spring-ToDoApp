<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.eBookManagementSytem.models.Mobiles" %>

<!DOCTYPE html>
<html>
<head>
  <title>Product List</title>
	<style> /* CSS styles go here */
    .container {
      max-width: 960px;
      margin: 0 auto;
    }

    .text-center {
      text-align: center;
    }

    .my-5 {
      margin-top: 5rem;
      margin-bottom: 5rem;
    }

    .row {
      display: flex;
      flex-wrap: wrap;
      margin-left: -15px;
      margin-right: -15px;
    }

    .col-6 {
      width: 50%;
      padding-left: 15px;
      padding-right: 15px;
    }

    .card {
      width: 100%;
      margin-bottom: 1rem;
      border: 1px solid rgba(0, 0, 0, 0.125);
      border-radius: 0.25rem;
      background-color: #fff;
    }

    .card-img-top {
      width: 100%;
      height: auto;
    }

    .card-body {
      padding: 1rem;
    }

    .card-title {
      margin-top: 0;
      margin-bottom: 0.75rem;
      font-size: 1.25rem;
      font-weight: bold;
    }

    .card-text {
      margin-bottom: 1rem;
    }

    .card-price {
      margin-top: 0;
      margin-bottom: 0.5rem;
      font-size: 1.5rem;
      font-weight: bold;
    }

    .btn-primary {
      color: #fff;
      background-color: #007bff;
      border-color: #007bff;
      padding: 0.375rem 0.75rem;
      font-size: 1rem;
      line-height: 1.5;
      border-radius: 0.25rem;
      cursor: pointer;
    }</style>
</head>
<body>
     <div class="container">
        <h1 class="text-center my-5">All Products</h1>

        <div class="row" >
      <% 
      List<Mobiles> prod = (List) request.getAttribute("products");
      if (prod != null) {
        for (Mobiles product : prod) {
      %>
<div class="col-6">
                <form method="post" action="/addtocart">
                    <input type="hidden" name="name" value="<%= product.getProdname() %>">
                    <div class="card">
                        <img src="<%= product.getProdimg() %>" alt="Product Image" style="height:150px;width:150px" class="card-img-top">
                        <div class="card-body">
                            <input type="hidden" name="id" value=<%=product.getId()%>>
                        
                            <h2 class="card-title"><%= product.getProdname() %></h2>
                            <p class="card-text"><%= product.getProddesc() %></p>
                            <h4 class="card-text"><%= "Rs." +product.getProdprice() %></h4>
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </div>
                    </div>
                </form>
            </div>
      <% 
        }
      }
      %>
       </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.17/dist/sweetalert2.min.js"></script>
</body>
</html>

