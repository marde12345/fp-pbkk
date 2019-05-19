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
<link href='<spring:url value="/resources/css/bootstrap.min.css"/>'
	rel="stylesheet">
<link href='<spring:url value="/resources/css/styles.css"/>'
	rel="stylesheet">
<style type="text/css">
body {
	/* Full height */
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-image: ("<spring:url value="/resources/img/landingpagelogin.jpg
		"/>");
}
</style>
</head>
<body>
	<div class="row">
		<c:if test="${param.error != null}">
			<div class="alert alert-danger col-xs-offset-1 col-xs-10">
				Username atau password salah</div>
		</c:if>
		<c:if test="${param.logout != null}">
			<div class="alert alert-success col-xs-offset-1 col-xs-10">You
				have been logged out.</div>
		</c:if>
		<div
			class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Log in</div>
				<div class="panel-body">

					<form:form role="form"
						action="${pageContext.request.contextPath}/authenticateUser"
						method="POST">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Username"
									name="username" type="username" autofocus="">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password"
									name="password" type="password" value="">
							</div>
							<div class="form-group">
								<div class="col-sm-6 controls">
									<button class="btn btn-success">Login</button>
								</div>
							</div>
						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
		<!-- /.col-->
	</div>
	<!-- /.row -->


	<script src='<spring:url value="/resources/js/jquery-1.11.1.min.js"/>'></script>
	<script src='<spring:url value="/resources/js/bootstrap.min.js"/>'></script>
</body>
</html>
