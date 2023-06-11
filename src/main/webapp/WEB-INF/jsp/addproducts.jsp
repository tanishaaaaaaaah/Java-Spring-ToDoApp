<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Add Product</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

  <!-- Custom CSS -->
  <style>
  
.navbar-nav li.nav-item {
  transition: background-color 0.3s;
}

.navbar-nav li.nav-item:hover {
  background-color: #0066ff;
  border-radius:25%;
}

.navbar-nav li.nav-item a.nav-link {
  color: #ffff;
}

.navbar-nav li.nav-item a.nav-link:hover {
  color: #ffffff;
}

.navbar-nav li.nav-item.active a.nav-link {
  font-weight: bold;
}
  body {
    padding: 50px;
  }

  .form-container {
    max-width: 500px;
    margin: 0 auto;
    background-color: #f7f7f7;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }

  .form-container h2 {
    text-align: center;
    margin-bottom: 30px;
  }

  .form-container .form-group label {
    font-weight: 600;
  }

  .form-container .btn-primary {
    width: 100%;
  }

  /* Custom CSS for product list */
  .container {
    max-width: 960px;
    margin: 0 auto;
  }

  .row {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }

  .col-6 {
    width: 50%;
    padding: 15px;
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
    text-align: center;
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
  }
 
  </style>
</head>

<body>
<nav class="navbar navbar-expand-lg" style="background-color:#6394b8;color:black">
	<div class="container">
		<a class="navbar-brand" style="color:White" href="/index">M-Cart</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
<div class="collapse navbar-collapse"  id="navbarNav">
  <ul class="navbar-nav ml-auto">
    <li class="nav-item"><a class="nav-link" href="/login">Admin</a></li>
    <li class="nav-item"><a class="nav-link" href="/viewproducts">Products</a></li>
        <li class="nav-item"><a class="nav-link" href="/addproducts">Add Products</a></li>
    
    <li class="nav-item"><a class="nav-link" href="/addtocart">Cart</a></li>
    <li class="nav-item"><a class="nav-link" href="/addtocart">Orders</a></li>
    <li class="nav-item">
      <form action="/logout" method="get">
        <a type="submit" href="/login" class="nav-link">Logout</a>
      </form>
    </li>
  </ul>
</div>
	</div>
</nav>
  <div class="container">
    <div class="form-container">
      <h2>Add Product</h2>
      <form method="post" action="/addproducts">

        <div class="form-group">
          <label for="product-name">Product Name</label>
          <input type="text" name="prodname" id="product-name" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-name">Model Name</label>
          <input type="text" name="modelname" id="product-name" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-price">Product Price</label>
          <input type="number" name="prodprice" id="product-price" class="form-control" required>
        </div>
        <div class="form-group">
          <label for="product-quantity">Product Quantity</label>
          <input type="number" name="prodquant" id="product-quantity" class="form-control" required>
        </div>
        
        <div class="form-group">
          <label for="product-description">Product Description</label>
          <textarea name="proddesc" id="product-description" class="form-control" rows="5" required></textarea>
        </div>
         <div class="form-group">
          <label for="product-quantity">Product Image</label>
          <input type="text" name="prodimg" id="product-quantity" class="form-control" required>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary">Add Product</button>
        </div>
      </form>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
