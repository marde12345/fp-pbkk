<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<c:set var="res" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SIKoKes - Login</title>
<link rel="stylesheet" type="text/css"
	href='<c:url value="/resources/css/login.css"></c:url>'>
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row no-gutter">
			<div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"
				style="background-image: url(<c:url value="/resources/img/landingpagelogin.jpg" />);"></div>
			<div class="col-md-8 col-lg-6">
				<div class="login d-flex align-items-center py-5">
					<div class="container">
						<div class="row">
							<div class="col-md-9 col-lg-8 mx-auto">
								<h3 class="login-heading mb-4">Welcome back!</h3>
								<c:if test="${param.error != null}">
									<div class="alert alert-danger col-xs-offset-1 col-xs-10">
										Username atau password salah</div>
								</c:if>
								<c:if test="${param.logout != null}">
									<div class="alert alert-success col-xs-offset-1 col-xs-10">You
										have been logged out.</div>
								</c:if>
								<form:form
									action="${pageContext.request.contextPath}/authenticateUser"
									method="POST">
									<div class="form-label-group">
										<input type="text" name="username" class="form-control" required autofocus>
										<label for="username">Username</label>
									</div>
									<div class="form-label-group">
										<input type="password" name="password" class="form-control" required> <label
											for="password">Password</label>
									</div>

									<input value="Login"
										class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2"
										type="submit" />
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.js"></script>
	<script type="text/javascript"
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
