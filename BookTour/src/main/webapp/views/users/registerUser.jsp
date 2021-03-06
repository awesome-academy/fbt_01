<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="banner-bottom">
	<!-- container -->
	<div class="container">
		<div class="faqs-top-grids">
			<div class="book-grids">
				<div class="col-md-6 book-left">
					<div class="book-left-info">
						<c:if test="${not empty msg}">
							<div class="alert alert-${css} alert-dismissible" role="alert">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>${msg}</strong>
							</div>
						</c:if>
						<h3>Create Your Govihar Account</h3>
					</div>
					<div class="book-left-form">
						<form method="post" action="<c:url value="/register/add"/> "
							modelAttribute="userAdd">
							<p>Full Name</p>
							<input type="text" name="fullName" value="">
							<p>Gender</p>
							<select name="gender">
								<option value="null">--Select--</option>
								<option value="0">Female</option>
								<option value="1">Male</option>
							</select>
							<p>Phone Number</p>
							<input type="text" name="phoneNumber" value="">
							<p>Address</p>
							<textarea name="address"></textarea>
							<p>Email Address</p>
							<input type="text" name="email" value="">
							<p>Password</p>
							<input type="password" name="password" id="password">
							<p>Confirm Password</p>
							<input type="password" name="password" id="password"> <label
								for="checkbox"><input type="checkbox" id="checkbox">
								<i>Remember me</i></label> <input type="submit" id="login"
								value="Register">
						</form>
					</div>
				</div>
				<div class="col-md-6 book-left book-right">
					<div class="book-left-info">
						<h3>Recommended</h3>
					</div>
					<div class="book-left-bottom">
						<div class="book-left-facebook">
							<a href="#">Connect with Facebook</a>
						</div>
						<div class="book-left-chrome">
							<a href="#">Connect with Google</a>
						</div>
					</div>
					<ul>
						<li>Access booking history with upcoming trips</li>
						<li>Print tickets and invoices</li>
						<li>Make checkouts simpler</li>
						<li>Enter your contact details only once</li>
						<li>Get alerts for low fares</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //container -->
</div>