<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>Products in Your basket</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<%@ page session="true" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="http://i.imgur.com/BWj5hjo.png">
			<div class="container-fluid">
				<c:forEach var="product" items="${product}" >
					<div class="container"  style="color:white">
						<h3>${product.name}</h3>
						<p>${product.description}</p>
						<p>${product.price}<span class="glyphicon glyphicon-euro"></span></p>
						<p><img src="${product.pic}" class="img-thumbnail" width="300" height="200">
							 <form action ="<c:url value="/basket/delete/${product.getIdProduct()}"></c:url>">
		  						<button class="btn btn-danger" type="submit">
		  							<span class="glyphicon glyphicon-remove-sign"></span>From Basket</button>
						     </form>
						</p>
					</div>
				</c:forEach>
					    <div class="container" style="margin:auto">
					 		<form action ="<c:url value="/basket/orderPage"></c:url>">
		  						<button class="btn btn-success" type="submit">
		  							<span class="glyphicon glyphicon-ok-sign"></span> Make Order</button>
							</form>
						</div>
			</div>
		</body>
  </html>