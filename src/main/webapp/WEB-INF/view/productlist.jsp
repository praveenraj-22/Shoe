<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp"%>

<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
th {
	font-family: times new roman;
	color: white;
}

td {
	font-family: times new roman;
	color: black;
}

b {
	font-family: times new roman;
	color: yellow;
}


</style>

</head>
<body>
	<b><font color="white">List of Product</font></b>
	<div class="container">
		<table class="table table-responsive">
			<thead>
				<tr>
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
			</thead>
			<tfoot>
			<tr>
					<th>Product Image</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Price</th>
					<th>Action</th>
				</tr>
				</tfoot>
			
			
			<tbody>
				<c:forEach items="${product}" var="p">
					<c:url value="/resources/image/${p.id }.png" var="imageUrl"></c:url>
					<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl"></c:url>
					<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteUrl"></c:url>
					<tr>
						<td><img src="${imageUrl }" height="200" width="250"></td>

						<td><a href="${viewUrl}">${p.productname}</a></td>
						<td>${p.category.categoryName }</td>
						<td>${p.price}</td>
						<td><a href="${viewUrl}"><span
								class="glyphicon glyphicon-info-sign"></span></a> 
								<security:authorize access="hasRole('ROLE_ADMIN')">
								<a href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a>
							<c:url value="/admin/product/geteditform/${p.id}" var="editUrl"></c:url>
							<a href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a>
						</security:authorize>
						</td>
					</tr>
				</c:forEach>
				</tbody>
		</table>
	</div>
	
	<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});

</script>

</body>
</html>


