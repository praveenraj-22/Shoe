<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<html>
<head>

<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
  <div class="row">

    <div class="col-sm-6">
      <div class="panel panel-info">
        <div class="panel-heading">USER-DETAIL</div>
  <div class="panel-body"><center><img src="${contextRoot }/resources/image/aWWwIeeY_400x400.png" class="img-circle"  height="100px" width="100px"></center></div>


<c:url value="savecustomer" var="url" ></c:url>
<springForm:form action="${url }" modelAttribute="customer" method="POST" class="form-horizontal">


<div class="form-group">

<springForm:label class="control-label col-sm-3" path="firstname">Enter Firstname</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" name="firstname" path="firstname"/>
<springForm:errors path="firstname" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label class="control-label col-sm-3" path="lastname">Enter Lasttname</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" path="lastname" name="lastname"/>
<springForm:errors path="lastname" cssStyle="color:red"></springForm:errors>
</div>
</div>


<div class="form-group">
<springForm:label class="control-label col-sm-3" path="email">Enter Email</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" path="email" name="email"/>
<springForm:errors path="email" cssStyle="color:red"></springForm:errors>
<p style="color:red">${duplicateEmail }</p>
</div>
</div>


<div class="form-group">
<springForm:label class="control-label col-sm-3" path="phone">Enter Mobile</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" path="phone" name="phone"/>
<springForm:errors path="phone" cssStyle="color:red"></springForm:errors>
</div>
</div>


<div class="form-group">
<springForm:label class="control-label col-sm-3" path="user.username">Enter Username</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" path="user.username" name="username"/>
<springForm:errors path="user.username" cssStyle="color:red"></springForm:errors>
<p style="color:red">${duplicateUsername }</p>
</div>
</div>

<div class="form-group">
<springForm:label class="control-label col-sm-3" path="user.password">Enter Password</springForm:label>
 <div class="col-sm-8">
<springForm:input class="form-control" path="user.password" name="password"/>
<springForm:errors path="user.password" cssStyle="color:red"></springForm:errors>
</div>

</div>

<p><center><b><u>BILLING-ADDRESS</u></b></center>

  <div class="form-group">
<springForm:label class="control-label col-sm-3" path="billingAddress.streetname">Enter Streetname</springForm:label>
 <div class="col-sm-8">
 <springForm:input class="form-control" path="billingAddress.streetname" name="streetname"/>
<springForm:errors path="billingAddress.streetname" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label class="control-label col-sm-3" path="billingAddress.apartmentnumber">Enter apartmentnumber</springForm:label>
 <div class="col-sm-8">
 <springForm:input class="form-control" path="billingAddress.apartmentnumber" name="apartmentnumber"/>
<springForm:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label class="control-label col-sm-3" path="billingAddress.city">Enter city</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="billingAddress.city" class="form-control" name="apartmentnumber"/>
<springForm:errors path="billingAddress.city" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label class="control-label col-sm-3" path="billingAddress.state">Enter state</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="billingAddress.state" class="form-control" name="state"/>
<springForm:errors path="billingAddress.state" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="billingAddress.country" class="control-label col-sm-3">Enter country</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="billingAddress.country" class="form-control" name="country"/>
<springForm:errors path="billingAddress.country" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="billingAddress.zipcode" class="control-label col-sm-3">Enter zipcode</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="billingAddress.zipcode" class="form-control" name="zipcode"/>
<springForm:errors path="billingAddress.zipcode" cssStyle="color:red"></springForm:errors>
</div>
</div>

<p><center><b><u>SHIPPING-ADDRESS</u></b></center>
  <div class="form-group">
  <springForm:label path="shippingAddress.streetname" class="control-label col-sm-3">Enter Streetname</springForm:label>
 <div class="col-sm-8">
<springForm:input path="shippingAddress.streetname" name="streetname"/>
<springForm:errors path="shippingAddress.streetname" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="shippingAddress.apartmentnumber" class="control-label col-sm-3">Enter apartmentnumber</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="shippingAddress.apartmentnumber" name="apartmentnumber"/>
<springForm:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="shippingAddress.city" class="control-label col-sm-3">Enter city</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="shippingAddress.city" name="city"/>
<springForm:errors path="shippingAddress.city" cssStyle="color:red"></springForm:errors>
</div>
</div>


<div class="form-group">
<springForm:label path="shippingAddress.state" class="control-label col-sm-3">Enter state</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="shippingAddress.state" name="state"/>
<springForm:errors path="shippingAddress.state" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="shippingAddress.country" class="control-label col-sm-3">Enter country</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="shippingAddress.country" name="country"/>
<springForm:errors path="shippingAddress.country" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="shippingAddress.zipcode" class="control-label col-sm-3">Enter zipcode</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="shippingAddress.zipcode" name="zipcode"/>
<springForm:errors path="shippingAddress.zipcode" cssStyle="color:red"></springForm:errors>
</div>
</div>



<div class="form-group">
 <div class="col-sm-10">
  <div class="text-center">
<input type="submit" value="Register">
</div>
</div>
</div>

</springForm:form>
</div>
</div>
</div>

</div>







</body>
</html>
