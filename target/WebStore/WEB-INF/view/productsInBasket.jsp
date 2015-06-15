<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="container">
	<div class="row">   
		<c:forEach var="product" items="${product}" >
			<div class="productsInBasket">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
						<div class="thumbnail">
							<div class="caption">
								<h3>${product.name}</h3>
								<p>${product.description}</p>
								<p>${product.price}USD</p>
							</div>
		
						 
		 				</div>
				</div>
		</c:forEach>
	</div>
	<form action ="<c:url value="/basket/orderPage"></c:url>">
		  <button class="orderButton" type="submit">Make Order
		  </button>
	</form>
</section>
			