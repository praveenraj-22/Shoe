<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <div class="row">

    <div class="col-sm-6">
      <div class="panel panel-info">
        <div class="panel-heading">SIGN-IN PAGE</div>
  <div class="panel-body"><center><img src="resources/image/aWWwIeeY_400x400.png" class="img-circle"  height="100px" width="100px"></center></div>


<springForm:form action="signin" modelAttribute="Usersignin" method="POST" class="form-horizontal">



<div class="form-group">
  <springForm:label class="control-label col-sm-3" path="fname">First Name:</springForm:label>
  <div class="col-sm-8">
  <springForm:input class="form-control" placeholder="Enter Firstname" name="fname" path="fname"/>
</div>
</div>

<div class="form-group">
  <springForm:label class="control-label col-sm-3" path="lname">Last Name:</springForm:label>
  <div class="col-sm-8">
  <springForm:input path="lname" class="form-control" id="lname" placeholder="Enter Lastname" name="lname"/>
</div>
</div>

<div class="form-group">
  <springForm:label path="Address" class="control-label col-sm-3" >Address:</springForm:label>
  <div class="col-sm-8">
  <springForm:textarea class="form-control" rows="5" cols="30" path="address" id="address"/>
  
</div>
</div>

<div class="form-group">
  <springForm:label path="email" class="control-label col-sm-3" >E-mail:</springForm:label>
  <div class="col-sm-8">
  <springForm:input path="Email" class="form-control" id="email" placeholder="E-mail ID" name="email"/>
</div>
</div>

<div class="form-group">
  <springForm:label class="control-label col-sm-3" path="password">Password:</springForm:label>
  <div class="col-sm-8">
  <springForm:input path="Password" class="form-control" type="password" id="password" placeholder="Password" name="password"/>
</div>
</div>

<div class="form-group">
  <springForm:label class="control-label col-sm-3" path="mobile">Mobile-No:</springForm:label>
  <div class="col-sm-8">
  <springForm:input path="Mobile" class="form-control" id="mbl" placeholder="Mobile No" name="mbl"/>
</div>
</div>

<div class="form-group">
  <div class="col-sm-10">
  <div class="text-center">
<springForm:button type="submit" class="btn btn-default">Submit</springForm:button>
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
