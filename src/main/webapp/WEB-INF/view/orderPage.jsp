<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>Order Page</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ page session="true" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="http://wallrere.com/wp-content/uploads/2015/05/white-background-wallpaper-472209.jpg">  
			<div class="container-fluid">
				<h3 class="text-center"; style="color:blue"> Please enter the delievery's address and login as confirmation of Your Order!</h3>
					<div class="row">
		  		  		<div class="col-md-4"></div>
		  		  		<div class="col-md-4">
			  		  		<c:url value="/basket/order" var="orderUrl"></c:url>
							<form:form action="${orderUrl}" method="POST" modelAttribute="Order">
								<div class="container">
									<form:label path="addressOfDelievery"></form:label>
										<p><form:input path="addressOfDelievery" class="input_field" type="text" placeholder="Place of delievery"/></p>
						
									<form:label path="customer"></form:label>
										<p><form:input path="customer" class="input_field" type="text" placeholder="Login"/></p>
						
										<form action="<c:url value="/congratulation"></c:url>">
											<button class="btn btn-success" type="submit">
											<span class="glyphicon glyphicon-pencil"></span> Order Product</button>
							  			</form>
									</div>
							</form:form>
						</div>
						<div class="col-md-4"></div>
			   	    </div>
			</div>
		</body>
  </html>