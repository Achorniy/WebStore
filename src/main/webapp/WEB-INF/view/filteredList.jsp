<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>Filtered List of products</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<%@ page session="true" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="D:/workspace/WebStore/src/main/webapp/resources/images/basket.jpg">
			<div class="container-fluid" style="margin:15 px;">
				<div class="row">   
					<c:forEach var="product" items="${product}" >
						<div class="container" >
							<h3>${product.name}</h3>
							<p>${product.description}</p>
							<p>${product.price}<span class="glyphicon glyphicon-euro"></span></p>
						    <a href="<c:url value="/basket/delete/${product.getIdProduct()}"></c:url>" class="label label-danger"
								ng-click="removeFromCart(item.product.productId)"> 
									<span class="glyphicon glyphicon-remove" /></span> Remove from Basket</a>
						</div>
						
				  </c:forEach>
				</div> 
				<br>
						<div class="container" style="margin:15 px;">
							<form action ="<c:url value="/basket/orderPage"></c:url>">
		  						<button class="btn btn-success" type="submit">
		  							<span class="glyphicon glyphicon-ok-sign"></span> Make Order</button>
							</form>
						</div>
			</div>
	  </body>
  </html>