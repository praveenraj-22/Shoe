<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/j_spring_security_check" var="login"></c:url>
<form action="${login }" method="post">

<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
            <h4>Welcome</h4>
            <input type="text" name="j_username" class="form-control input-sm chat-input" placeholder="username" />
            <br>
            <input type="password" name="j_password" class="form-control input-sm chat-input" placeholder="password" />
            <br>
            <div class="wrapper">
            <span class="group-btn">     
                <input type="submit" value="Login"> <i class="fa fa-sign-in"></i>
            </span>
            </div>
            </div>
        
        </div>
    </div>
</div>
</form>
</body>
</html>