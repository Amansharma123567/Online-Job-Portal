<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/user.gif");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body>
    
	<c:if test="${userobj.role ne 'user' }">
		<c:redirect url="login.jsp" />
	</c:if>


<%@include file="all_component/user_navbar.jsp"%>
	<%--<%@include file="all_component/navbar.jsp"%>--%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-custom p-4">Welcome to User..</h1>
		</div>
	</div>
</body>
</html>

