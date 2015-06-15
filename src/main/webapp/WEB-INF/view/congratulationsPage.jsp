<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<p> Congratulations with successful order!!!</p>
	<h3>Our Agent will contact You to find out all details of payment and delivery!</h3>
		<h5>Have a nice day!</h5>
		
		<form action="<c:url value="/get/product"></c:url>">
		<h1><button class="returnToListProductsButton" type="submit">Return to List of Products
						<a href="<c:url value="/get/product"></c:url>">	
						</a> </button></h1>
		