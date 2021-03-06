<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="banner-bottom">
	<!-- container -->
	<div class="container">
	<input class="quicksearch" placeholder="Search" type="text">
		<div class="faqs-top-grids">
			<div class="product-grids">
				<div class="col-md-3 product-left filter-button-group">
					<div class="h-class">
						<h5><spring:message code="search.rank" /></h5>
						<div class="hotel-price" data-idStart="5">
							<label class="check"> <input type="checkbox" name="start5" value=".start5" id="start5"> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="starTextLabel"><spring:message code="search.start5" /></span>
							</label>
						</div>
						<div class="hotel-price" data-idStart="4">
							<label class="check"> <input type="checkbox"
								 name="start4" value=".start4" id="start4">
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="starTextLabel"><spring:message code="search.start4" /></span>
							</label>
						</div>
						<div class="hotel-price" data-idStart="3">
							<label class="check"> <input type="checkbox" name="start3" value=".start3" id="start3"> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="starTextLabel"><spring:message code="search.start3" /></span>
							</label>
						</div>
						<div class="hotel-price" data-idStart="2">
							<label class="check"> <input type="checkbox" name="start2" value=".start2" id="start2"> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="starTextLabel"><spring:message code="search.start2" /></span>
							</label>
						</div>
						<div class="hotel-price" data-idStart="1">
							<label class="check"> <input type="checkbox" name="start1" value=".start1" id="start1"> <span
								class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
								class="starTextLabel"><spring:message code="search.start1" /></span>
							</label>
						</div>
					</div>
					<div class="h-class filters">
						<h5><spring:message code="search.PriceAdults" /></h5>
						<div class="hotel-price">
							<label class="check"> <input type="radio" name="filter" value="numberGreaterThan150">
								<span class="p-day-grid"> &#62; 150.000VND </span>
							</label>
						</div>
						<div class="hotel-price">
							<label class="check"> <input type="radio" name="filter" value="numberLThan150"> <span
								class="p-day-grid"> &#60; 150.000VND</span>
							</label>
						</div>
					</div>
				</div>
				<div class="col-md-9 product-right isotope ">
				<c:forEach var="lTours" items="${toures }">
					<div class="product-right-grids isotope-item start${lTours.rankTour}">
						<div class="product-right-top">
							<div class="p-left">
								<div class="p-right-img">
									
									<a href="<c:url value='/detailtours/${lTours.id}'/> " > </a>

								</div>
							</div>
							<div class="p-right">
								<div class="col-md-6 p-right-left">
									<a href="<c:url value='/detailtours/${lTours.id}'/> ">${lTours.name}</a>
									<div class="p-right-price">
									<c:forEach var = "i" begin = "1" end = '${lTours.rankTour}'>
										<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									</c:forEach>
									</div>
									
									<p><spring:message code="search.dateStart" />:  <fmt:formatDate pattern = "dd-MM-yyyy" value = "${lTours.dateStart }" /></p>
									<p class="p-call">0979867463</p>
								</div>
								<div class="col-md-6 p-right-right">
									<h6><spring:message code="search.rank" />: ${lTours.rankTour}/5</h6>
									<p>(123) Views</p>
									<p><spring:message code="search.adults" />: <span class="fix-fontsize numberAdults">${lTours.primeAdults}</span> VND<p>
									<br/>
									<p><spring:message code="search.childen" />: <span class="fix-fontsize numberChilden" >${lTours.primeChilden}</span> VND<p>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //container -->
</div>