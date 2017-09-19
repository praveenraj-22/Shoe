<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<title>SHOE</title>

<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/jquery/jquery-1.12.4.min.js" />"></script>
<link href="<c:url value="/resources/css/custom.css" />"
	rel="stylesheet">

<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/css/datatable.min.css" />"
	rel="stylesheet">

<script src="<c:url value="/resources/js/datatable.min.js" />"></script>


<style>
.jumbotron {
	background-color: #000103;
	background-image:
		url(http://www.transparenttextures.com/patterns/cartographer.png);
	color: red;
}

.navbar {
	margin-bottom: 00px;
	border-radius: 0px;
	background-image:
		url(http://www.transparenttextures.com/patterns/cartographer.png);
}

body {
	background-color: black;
	background-image:
		url(http://www.transparenttextures.com/patterns/cartographer.png);
	font-family: times new roman;
	color: black;
}
}
</style>
</head>
<body>

	<div class="jumbotron">
		<div class="text-center">
			<h1>
				<marquee> Rise..Run...Rest....Repeat.....</marquee>
			</h1>
		</div>
	</div>


	<nav class="navbar navbar-inverse navbar-fixed-top"> <!--navbar-->
	<div class="container-fluid">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#mynavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">ShOeFeVeR</a> <a
				class="navbar-brand" href="#"><img
				src=" ${contextRoot }/resources/image/aWWwIeeY_400x400.png"
				class="img-circle" height="23px" width="25px"> </a>
			<!--shopname-->
		</div>



		<div class="collapse navbar-collapse" id="mynavbar">
			<ul class="nav navbar-nav">
				<c:url value="/home" var="url1"></c:url>
				<li class="active"><a href="${url1}">Home<span
						class="sr-only"> </span></a></li>
				<c:url value="/Aboutus" var="url2"></c:url>
				<li><a href="${url2}">About us</a></li>
				<c:url value="/admin/getaddproduct" var="url3"></c:url>
				<li><c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<a href="${url3}">Add Product</a>

						</security:authorize>
					</c:if></li>








				<c:url value="/all/product/getallproduct" var="url4"></c:url>
				<li><a href="${url4}"><span
								class="glyphicon glyphicon-eye-open"></span>Product Available</a></li>




				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Category<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><c:forEach items="${categories }" var="c">
								<c:url
									value="/all/product/searchbycategory?searchCondition=${c.categoryName }"
									var="url" />
								<a href="${url }">${c.categoryName}</a>
							</c:forEach> <a href="${url }">${c.categoryName }</a> <c:url
								value="/all/product/searchbycategory?searchCondition=ALL"
								var="url1" /> <a href="${url1 }">All</a></li>
					</ul></li>


				<li><c:if
						test="${pageContext.request.userPrincipal.name!=null }">
						<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>


					</c:if></li>

				<li><security:authorize access="hasRole('ROLE_USER')">
				<c:url value="/cart/getcart" var="url7"></c:url>
						<li><a href="${url7 }"><span
								class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
					</security:authorize></li>



				<c:if test="${pageContext.request.userPrincipal.name==null }">

					<ul class="nav navbar-nav navbar-right">

						<c:url value="/all/registrationform" var="url5"></c:url>
						<li><a href="${url5 }"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>

						<c:url value="/login" var="url6"></c:url>
						<li><a href="${url6 }"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</c:if>



				<c:url value="/j_spring_security_logout" var="logoutUrl">
				</c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li><a href="${logoutUrl }">Logout</a>
				</c:if>


			</ul>
		</div>
	</div>
	</nav>

</body>
</html>