<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container-fluid" background-color="red"><!--carousel-->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${contextRoot }/resources/image/banner-home-adidasiniki-20170512.jpg" style="width:100%;">
      </div>

        <div class="item">
          <img src="${contextRoot }/resources/image/banner-home-adidasstansmith-20170602.jpg" style="width:100%;">
        </div>

        <div class="item">
            <img src="${contextRoot }/resources/image/banner-home-pumatsugishinsei-20170522.jpg" style="width:100%;">
          </div>

          <div class="item">
              <img src="${contextRoot }/resources/image/fausto_1_june_2017.jpg" style="width:100%;">
            </div>

            <div class="item">
                <img src="${contextRoot }/resources/image/woodland_1_june_2017.jpg" style="width:100%;">
              </div>

              <div class="item">
                  <img src="${contextRoot }/resources/image/076167b4676f4a01b562660ed2c1db7f.jpg" style="width:100%;"height="75%;">
                </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div><br>
    <br>
<div class="row text-center">
  <div class="col-sm-2">
    <div class="thumbnail">
      <img src="${contextRoot }/resources/image/nike.jpg" width="250" height="250">
      <p><strong>Nike</strong></p>
      <button class="btn">Purchase</button>
    </div>
    </div>
    </div>

</body>
</html>
