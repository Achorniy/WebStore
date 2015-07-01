<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>Congratulation Page</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ page session="true" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="http://www.alpen-herz.at/grafiken/heart-pattern-067.jpg">
			<div class="container-fluid" style="margin: 200px">
					<h3 class="text-center" style="color:green"> Congratulations with successful order!!!
									Our Agent will contact You to find out all details of payment and delivery!
										Have a nice day!
					</h3>
				 <div class="row">
  					<div class="col-md-4"></div>
 						<div class="col-md-4">
							   <div class="container">
									<form action="<c:url value="/get/product"></c:url>">
										<h1><button class="btn btn-info" type="submit">
											<span class="glyphicon glyphicon-home"></span> Return to List of Products
												<a href="<c:url value="/get/product"></c:url>">	</a> 
											</button>
										</h1>
									</form>
								</div>
						</div>
					<div class="col-md-4"></div>
				</div>	
			</div>	
		</body>
	</html>	