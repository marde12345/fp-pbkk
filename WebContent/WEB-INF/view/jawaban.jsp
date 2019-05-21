<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIKOKES</title>
<!-- Bootstrap core CSS -->
<link
	href='<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" ></c:url>'
	rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i"
	rel="stylesheet">
<link
	href='<c:url value="/resources/vendor/fontawesome-free/css/all.min.css" ></c:url>'
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href='<c:url value="/resources/css/resume.min.css" ></c:url>'
	rel="stylesheet">
</head>
<body id="page-top">
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
		id="sideNav">
		<a class="navbar-brand js-scroll-trigger" href="#page-top"> <span
			class="d-block d-lg-none">Clarence Taylor</span> <span
			class="d-none d-lg-block"> <img
				class="img-fluid img-profile rounded-circle mx-auto mb-2"
				src='<c:url value="/resources/img/profile/" ></c:url>${user.foto}'
				alt="">
		</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="${pageContext.request.contextPath }/profile">About</a></li>
				<li class="nav-item"><a class="nav-link js-scroll-trigger"
					href="${pageContext.request.contextPath }/">Timeline</a></li>
				<li></li>
				<li></li>
				<li></li>
				<form:form action="${pageContext.request.contextPath}/logout"
					method="POST">
					<input class="btn btn-danger" type="submit" value="Logout" />
				</form:form>
			</ul>
		</div>
	</nav>
	<div class="container-fluid p-0">

		<hr class="m-0">

		<section
			class="resume-section p-3 p-lg-5 d-flex justify-content-center"
			id="experience">
			<div class="w-100">
				<h2 class="mb-5">${question.judul }</h2>

				<c:forEach items="${jawaban }" var="jawab">

					<div
						class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
						<div class="resume-content">
							<div class="subheading mb-3">
								<c:out value="${jawab.answer_user}"></c:out>
							</div>
							<p>
								<c:out value="${jawab.answer }"></c:out>
							</p>
						</div>
						<div class="resume-date text-md-right">
							<span class="text-primary"></span>
						</div>
					</div>
				</c:forEach>
				<form:form  >
				
				</form:form>
			</div>

		</section>

	</div>

	<!-- Bootstrap core JavaScript -->
	<script
		src='<c:url value="/resources/vendor/jquery/jquery.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
	<!-- Plugin JavaScript -->
	<script
		src='<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"></c:url>'></script>

	<!-- Custom scripts for this template -->
	<script src='<c:url value="/resources/js/resume.min.js"></c:url>'></script>

</body>
</html>