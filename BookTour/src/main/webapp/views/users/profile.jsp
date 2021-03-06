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
				<div class="col-md-8 book-left">
					<div class="book-left-info">
					
					<p>FullName: <span>${user.fullName}</span></p> 
					<p>Gender: <span>	
					<c:choose>
						<c:when test="${user.gender == 1}">
							<c:out value="Nam"/>
						</c:when>
					<c:otherwise>
							<c:out value="Nu"/>
					</c:otherwise>
					</c:choose></span></p> 
					<p>Address: <span>${user.address}</span></p> 
					<p>Email: <span>${user.email}</span></p> 
					<p>Phone: <span>${user.phoneNumber}</span></p> 
					<p>Role: <span>${user.role}</span></p> 
				
					</div>
				</div>
				<div class="col-md-4 book-left book-right">
					<div class="book-left-info">
						<form class="form-horizontal" modelAttribute="updateUser" action="<c:url value="/profileUser/update"/> " method="post">
							<div class="form-group">
								  <label for="fullname">Full Name:</label>
								<input class="form-control" type="text" name="fullName" value="${user.fullName}">
							</div>
							<div class="form-group">
								  <label for="gender">Gender:</label>
								<select class="form-control" name="gender">
									<c:out value=""></c:out>
									<option value="null">--Select--</option>
									<option
										<c:if test="${user.gender == 0}"><c:out value="selected"></c:out></c:if>
										value="0">Female</option>
									<option
										<c:if test="${user.gender == 1}"><c:out value="selected"></c:out></c:if>
										value="1">Male</option>
								</select>
							</div>
							<div class="form-group">
								  <label for="phone">Phone:</label>
								<input class="form-control" type="text" name="phoneNumber"
									value="${user.phoneNumber}">
							</div>
							<div class="form-group">
								  <label for="address">Address:</label>
								<textarea class="form-control" name="address" value="">${user.address}</textarea>
							</div>
							<div class="form-group">
								  <label for="email">Email:</label>
								<input class="form-control" type="text" name="email" value="${user.email}">
							</div>
							<input type="submit" onclick="if(!(confirm('You want to update?'))) return false" class="btn btn-success" id="loginn" value="Update">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
