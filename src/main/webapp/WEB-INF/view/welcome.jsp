<!DOCTYPE html>
  <html lang="en">
	<head>
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
		<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	    <title>Wellcome Page</title>
 		   <!-- Bootstrap -->
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  	</head>
  	  	<body background="http://pows109.pbworks.com/w/file/fetch/36805211/background.jpg" >
  			<div class="container-fluid" style="margin: 200px">
   				 <div class="row">
  					<div class="col-md-4"></div>
 						<div class="col-md-4">
  						  <h1><p style="color:yellow">${greeting}</p></h1>
						  <h2><p style="color:red">${tagline}</p></h2>
		 					 <form action="<c:url value="/registration"></c:url>">
								 <button class="btn btn-success" type="submit">Registration 
			 						 <a href="<c:url value="/registration"></c:url>"> </a></button>
							 </form> 
						  </div>
 						  <div class="col-md-4"></div>
					</div>
			</div>    
		</body>
  </html>