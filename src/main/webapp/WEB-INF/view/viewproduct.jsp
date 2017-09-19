<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body
{
font-family: times new roman;
color: white;
}

form 
{
font-family: times new roman;
color:	blue;
}

</style>
</head>
<body>
<div>
<div class="container">
<b>Details about the Product</b>

<c:url value="/resources/image/${product.id }.png" var="imageUrl"></c:url>
 <table class="table table-bordered">
 <tr>
 <td>Product Image</td><td><img src="${imageUrl }" height="350" width="650"></td></tr>
 
<tr>
<td>Product Name:</td><td>${product.productname}</td>
</tr>
<tr>
<td>Price</td><td>${product.price}</td>
</tr>
<tr>
<td>Description</td><td>${product.description}</td>
</tr>
<tr>
<td>Quantity</td><td>${product.quantity}</td>
</tr>


</table>
<c:if  test="${product.quantity==0 }">
Out Of Stock
</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/cart/addtocart/${product.id }" var="url"></c:url>
<form action="${url }">
Enter Units  :	<input  type="text" name="units">

<button type="submit" style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span></button>
</form>
</c:if><br>
<br><c:url value="/all/product/getallproduct" var="url1"></c:url>
<a href="${url1}">back to product list</a><br>

</div>
</div>

</body>
</html>