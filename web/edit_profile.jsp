<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile Page</title>
<%@include file="all_component/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp" />
	</c:if>
        

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Edit Profile</h5>
						</div>

						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-success ">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>

						<form action="update_profile" method="post">
							<input type="hidden" name="id" value="${userobj.id }">
							<div class="form-group">
								<Label>Enter Full Name</Label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="name" value="${userobj.name }">
							</div>
							

							<div class="form-group">
								<Label>Enter Email</Label> <input type="email"
									required="required" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email" value="${userobj.email }">
							</div>
							<div class="form-group">
								<Label for="exampleInputPassword1">Enter Password</Label> <input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="ps" value="${userobj.password }">
							</div>
                                                        <div class="form-group">
								<Label>Enter Qualification</Label> <input type="text"
									required="required" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="qua" value="${userobj.qualification }">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-black">Update</button>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>