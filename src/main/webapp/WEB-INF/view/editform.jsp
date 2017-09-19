<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="springForm"
	uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
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
					<div class="panel-heading">EDIT-PRODUCT</div>
					<div class="panel-body">
						<center>
							<img src="${contextRoot }/resources/image/aWWwIeeY_400x400.png"
								class="img-circle" height="100px" width="100px">
						</center>
					</div>


					<c:url value="/admin/product/editproduct" var="url"></c:url>
					<springForm:form action="${url}" modelAttribute="productObj"
						method="POST" enctype="multipart/form-data"
						class="form-horizontal">

						<springForm:hidden path="id" />
						<div class="form-group">
							<springForm:label class="control-label col-sm-3"
								path="productname">Product Name :</springForm:label>
							<div class="col-sm-8">
								<springForm:input class="form-control" path="productname" />
							</div>
						</div>

						<div class="form-group">
							<springForm:label class="control-label col-sm-3"
								path="description">Description :</springForm:label>
							<div class="col-sm-8">
								<springForm:input class="form-control" path="description" />
							</div>
						</div>

						<div class="form-group">
							<springForm:label class="control-label col-sm-3" path="price">Product Price :</springForm:label>
							<div class="col-sm-8">
								<springForm:input class="form-control" path="price" />

							</div>
						</div>

						<div class="form-group">
							<springForm:label class="control-label col-sm-3" path="quantity">Product Quantity :</springForm:label>
							<div class="col-sm-8">
								<springForm:input class="form-control" path="quantity" />
							</div>
						</div>


						<div class="form-group">
							<springForm:label class="control-label col-sm-3" path="">Category:</springForm:label>
							<div class="col-sm-8">
								<c:forEach items="${categories }" var="c">


									<springForm:radiobutton path="category.cid" value="${c.cid }" />${c.categoryName }

</c:forEach>

							</div>
						</div>

						<div class="form-group">
							<springForm:label class="control-label col-sm-3" path="">upload an image:</springForm:label>
							<div class="col-sm-8">
								<springForm:input path="" type="file" name="image" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-10">
								<div class="text-center">
									<springForm:button type="submit" class="btn btn-default">Edit Product</springForm:button>
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