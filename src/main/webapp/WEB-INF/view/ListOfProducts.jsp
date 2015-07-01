<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>List of Products</title>
	  	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="http://www.wpclipart.com/page_frames/background_pages/page_backgrounds_2/brick_wall_background.png">
				<div class="container-fluid">
					<div class="row">
						<div class="container">
							<h3><p class="text-center" style="color:green"> You are in the List of Products.
								View them all! If You like anything, please add them to Your basket.
								See all the products You added by clicking button "Products in Your Basket"</p></h3>
						</div>
							<c:forEach var="product" items="${products}">
								<div class="container" style="padding-bottom: 15px; color:red; margn: auto;" class="text-center">
									<h3>${product.name}</h3>
									<h4>${product.description}</h4>
									<h5>${product.price}<span class="glyphicon glyphicon-euro"></span></h5>
									<img src="${product.pic}" class="img-thumbnail" width="300" height="200">
										
										<form action="<c:url value="/basket/add/${product.getIdProduct()}"></c:url>">
												<button class="btn btn-success" type="submit"><span class="glyphicon glyphicon-ok" aria-hidden="true">
													In Basket</span></button>
										</form>
						 		
							</c:forEach>
							  	<br>
									<form action="<c:url value="/basket/products"></c:url>">
										<button class="btn btn-warning" type="submit">
											<span class="glyphicon glyphicon-shopping-cart"/></span> Products in Basket 
												<a href="<c:url value="/basket/products"></c:url>"></a>
										</button>
								   </form>
							</div>
					 </div>
	             </div>
	         </body>   
	   </html>