<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<p> Please enter the delievery's address and confirm Your oder by clicking on button "Order Product"!</p>
<c:url value="/basket/order" var="orderUrl"></c:url>
<form:form action="${orderUrl}" method="POST" modelAttribute="Order">
	
	<form:label path="addressOfDelievery">addressOfDelievery:</form:label>
	<form:input path="addressOfDelievery"/>
		
		<form:hidden path="customer" value="${login}"/>
	
	
	<p>			
		<form action="<c:url value="/congratulation"></c:url>">
			<button class="congatulationButton" type="submit">Order Product</button>
			  </form>
		</p>
</form:form>