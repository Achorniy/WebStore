<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<section class="container">
	<div class="row">
		<p>You are in the List of Products.
			View them all! If You like anything, please add them to Your basket.
			See all the products You added by clicking button "Products in Your Basket " </p>
						
		<c:forEach var="product" items="${products}">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<div class="thumbnail">
					<div class="caption">
						
							<h3>${product.name}</h3>
							<p>${product.description}</p>
							<p>${product.price}USD</p>
						</div>
						
						<form action="<c:url value="/basket/add/${product.getIdProduct()}"></c:url>">
							<button class="addToBasketButton" type="submit">Add to Basket
							<a href="<c:url value="/get/product"></c:url>"></a></button>
						</form>
					 
					</div>
				</div>
			</c:forEach>
							<form action="<c:url value="/basket/products"></c:url>">
							<button class="busketProductsButton" type="submit">Products in Your Basket 
							<a href="<c:url value="/basket/products"></c:url>">	
							</a> </button></form>
		
	</div>
</section>