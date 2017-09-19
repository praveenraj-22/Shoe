<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>SHOE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/jquery/jquery-1.12.4.min.js" />"></script>
     <link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <style>

.jumbotron{
  background-color: #000103;
  background-image: url(http://www.transparenttextures.com/patterns/cartographer.png);
  color:red;

}

.navbar{
  margin-bottom: 00px;
border-radius: 0px;
  background-image: url(http://www.transparenttextures.com/patterns/cartographer.png);
}


body
{
  background-color: black;
  background-image: url(http://www.transparenttextures.com/patterns/cartographer.png);
}

</style>
</head>
<body>

  <div class="jumbotron">
  <div class="text-center">
    <h1><marquee> Rise..Run...Rest....Repeat.....</marquee></h1>
  </div>
</div>
</div>

  <nav class="navbar navbar-inverse navbar-fixed-top"> <!--navbar-->
  <div class="container-fluid">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mynavbar">
          <span class="icon-bar"></span>
            <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
      <a class="navbar-brand" href="#">ShOeFeVeR</a>
        <a class="navbar-brand" href="#"><img src="resources/image/aWWwIeeY_400x400.png" class="img-circle"  height="23px" width="25px">
        </a><!--shopname-->
    </div>
  

  
    <div class="collapse navbar-collapse" id="mynavbar">
<ul class="nav navbar-nav">
  <li><a href="home">Home</a></li>
  <li><a href="newarrival">New Arrival</a></li>
  <li><a href="men">Men</a></li>
  <li><a href="women">Women</a></li>
  <li class="active"><a href="kids">Kid</a></li>
  <li><a href="blog">Blog</a></li>
    <li><a href="addproduct">Addproduct</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
  <li><a href="signin"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
  <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
</ul>
</div>
 </div>
   </nav>

</body>
</html>