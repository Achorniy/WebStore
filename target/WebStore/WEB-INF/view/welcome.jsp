<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

			<div class="container">
					<h1>${greeting}</h1>
					<p>${tagline}</p>
					
								
		<p>			
		<form action="<c:url value="/registration"></c:url>">
			<button class="registrationButton" type="submit">Registration 
			 <a href="<c:url value="/registration"></c:url>"> </a></button>
			  </form>
		</p>
		
						
		</div>
			
	
    
    