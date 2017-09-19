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
        <div class="panel-heading">SHIPPING-CART</div>
  <div class="panel-body"><center><img src="${contextRoot }/resources/image/aWWwIeeY_400x400.png" class="img-circle"  height="100px" width="100px"></center></div>


<c:url value="/cart/order/${cartid }" var="url" ></c:url>
<springForm:form action="${url }" modelAttribute="shippingAddress" class="form-horizontal">

  <div class="form-group">
  <springForm:label path="streetname" class="control-label col-sm-3">Enter Streetname</springForm:label>
 <div class="col-sm-8">
<springForm:input path="streetname" name="streetname"/>
<springForm:errors path="streetname" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="apartmentnumber" class="control-label col-sm-3">Enter apartmentnumber</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="apartmentnumber" name="apartmentnumber"/>
<springForm:errors path="apartmentnumber" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="city" class="control-label col-sm-3">Enter city</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="city" name="city"/>
<springForm:errors path="city" cssStyle="color:red"></springForm:errors>
</div>
</div>


<div class="form-group">
<springForm:label path="state" class="control-label col-sm-3">Enter state</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="state" name="state"/>
<springForm:errors path="state" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="country" class="control-label col-sm-3">Enter country</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="country" name="country"/>
<springForm:errors path="country" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
<springForm:label path="zipcode" class="control-label col-sm-3">Enter zipcode</springForm:label>
 <div class="col-sm-8">
 <springForm:input path="zipcode" name="zipcode"/>
<springForm:errors path="zipcode" cssStyle="color:red"></springForm:errors>
</div>
</div>

<div class="form-group">
 <div class="col-sm-10">
  <div class="text-center">
<input type="submit" value="Next">
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