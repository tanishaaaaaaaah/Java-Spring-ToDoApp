<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.eBookManagementSytem.models.Customer"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M-Cart</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<!-- Custom CSS -->
<style>
/* Blue theme */
body {
	background-color: #f8f9fa;
}

.navbar-dark {
	background-color: #0000FF;
}

.btn-danger {
	background-color: #FF0000;
	border-color: #FF0000;
}

.container {
  position: relative;
}

.mySlides {
  display: none;
}

.cursor {
  cursor: pointer;
}

.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 3px;
  user-select: none;
  -webkit-user-select: none;
}

.prev {
  left: 0;
}

.next {
  right: 0;
}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row::after {
  content: "";
  display: table;
  clear: both;
}

.column {
  float: left;
  width: 16.66%;
}

.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
}
.navbar-nav {
  animation: slideIn 0.5s forwards;
}

@keyframes slideIn {
  0% {
    opacity: 0;
    transform: translateY(-10px);
  }
  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

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
<br>
<section>
	<!-- Container for the image gallery -->
	<div class="container">
		<!-- Full-width images with number text -->
		<div class="mySlides">
			<div class="numbertext">1 / 6</div>
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPUmqBo6Su7rEa7MC9imGc5wQ3fC0fD3faQ&usqp=CAU" style="width:100%">
		</div>
		<div class="mySlides">
			<div class="numbertext">2 / 6</div>
			<img src="data:image/jpeg;" style="width:100%">
		</div>
		<div class="mySlides">
			<div class="numbertext">3 / 6</div>
			<img src="img_mountains.jpg" style="width:100%">
		</div>
		<div class="mySlides">
			<div class="numbertext">4 / 6</div>
			<img src="img_lights.jpg" style="width:100%">
		</div>
		<div class="mySlides">
			<div class="numbertext">5 / 6</div>
			<img src="img_nature.jpg" style="width:100%">
		</div>
		<div class="mySlides">
			<div class="numbertext">6 / 6</div>
			<img src="img_snow.jpg" style="width:100%">
		</div>

		<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>

		<!-- Image text -->
		<div class="caption-container">
			<p id="caption"></p>
		</div>

		<!-- Thumbnail images -->
			<div class="row">
				<div class="column">
					<img class="demo cursor" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPUmqBo6Su7rEa7MC9imGc5wQ3fC0fD3faQ&usqp=CAU" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
				</div>
				<div class="column">
					<img class="demo cursor" src="data:image/jpeg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
				</div>
				<div class="column">
					<img class="demo cursor" src="img_mountains.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
				</div>
				<div class="column">
					<img class="demo cursor" src="img_lights.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
				</div>
				<div class="column">
					<img class="demo cursor" src="img_nature.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
				</div>
				<div class="column">
					<img class="demo cursor" src="img_snow.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
				</div>
			</div>
	</div>
</section>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
	let slideIndex = 1;
	showSlides(slideIndex);

	// Next/previous controls
	function plusSlides(n) {
		showSlides((slideIndex += n));
	}

	// Thumbnail image controls
	function currentSlide(n) {
		showSlides((slideIndex = n));
	}

	function showSlides(n) {
		let i;
		let slides = document.getElementsByClassName("mySlides");
		let dots = document.getElementsByClassName("demo");
		let captionText = document.getElementById("caption");
		if (n > slides.length) {
			slideIndex = 1;
		}
		if (n < 1) {
			slideIndex = slides.length;
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";
		captionText.innerHTML = dots[slideIndex - 1].alt;
	}
</script>
</body>
</html>
