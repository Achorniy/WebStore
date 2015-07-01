<!DOCTYPE html>
  <html lang="en">
	<head>
	  <title>Registration Form</title>
	  	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8"
		    pageEncoding="UTF-8"%>
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css">
		  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</head>
		<body background="http://bejeweled.popcap.com/html5/0.9.12.9490/html5/webres/DistantBackground_01.jpg">
		  <div class="container-fluid" style="margin: 150px">
				<div class="row">
		  		  <div class="col-md-4"></div>
		  		  <div class="col-md-4">
						<div class="registration">
							<h3>Registration</h3>
					  			<c:url value="/forvadToProducts" var="forvadToProductsUrl"></c:url>
									<form:form action="${forvadToProductsUrl}" method="POST" modelAttribute="customer">
										<p><form:input path="login" class="input_field" size="40" maxlength="50" 
											type="text" placeholder="Login" AUTOCOMPLETE="off" /></p>
										<p><form:input path="email" class="input_field" size="40" maxlength="50"
											 placeholder="Email" AUTOCOMPLETE="off"/></p>
										<p><form:input path="telephoneNumber" class="input_field" size="40" maxlength="50"
											 placeholder="Telephone Number" AUTOCOMPLETE="off"/></p>				
										<p><form:password path="password" class="input_field" size="40" maxlength="50"
											 placeholder="Password" AUTOCOMPLETE="off"/></p>
										<p><input class="btn btn-primary" type="submit" value="Register" /></p>
									</form:form>
						</div>
					</div>
			  	  <div class="col-md-4"></div>
			   </div>
			</div>
		</body>
</html>
	
	
	
	  
	
	
