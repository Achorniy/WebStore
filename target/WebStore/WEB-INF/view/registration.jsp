<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="registration">

<h3>Registration</h3>

<c:url value="/forvadToProducts" var="forvadToProductsUrl"></c:url>
<form:form action="${forvadToProductsUrl}" method="POST" modelAttribute="customer">
	
	<p>Enter Your Login</p>
	  <form:input path="login" class="input_field" size="40" maxlength="50" type="text" placeholder="Login" AUTOCOMPLETE="off" />
		
	<p>Enter Your Email</p>
		<form:input path="email" class="input_field" size="40" maxlength="50" placeholder="Email" AUTOCOMPLETE="off"/>
	
	<p>Enter Telephone number</p>
		<form:input path="telephoneNumber" class="input_field" size="40" maxlength="50" placeholder="telephoneNumber" AUTOCOMPLETE="off"/>
						
	<p>Enter Your Password</p>
		<form:password path="password" class="input_field" size="40" maxlength="50" placeholder="Password" AUTOCOMPLETE="off"/>
	
		<input class="input_submit" type="submit" value="Register" />
</form:form>

</div>