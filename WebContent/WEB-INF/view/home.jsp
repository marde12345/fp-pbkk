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

		<section class="resume-section p-3 p-lg-5 d-flex align-items-center"
			id="about">
			<div class="w-100">
				<h1 class="mb-0">
					<c:out value="${user.nama_lengkap }"></c:out>
					</span>
				</h1>
				<div class="subheading mb-5">
					<c:out value="${user.telp }"></c:out>
					· <a href='mailto:<c:out value="${user.email }"></c:out>'><c:out
							value="${user.email }"></c:out> </a>
				</div>
				<div class="social-icons">
					<a href="#"> <i class="fab fa-linkedin-in"></i>
					</a> <a href="#"> <i class="fab fa-github"></i>
					</a> <a href="#"> <i class="fab fa-twitter"></i>
					</a> <a href="#"> <i class="fab fa-facebook-f"></i>
					</a>
				</div>
			</div>
		</section>

		<hr class="m-0">

		<section
			class="resume-section p-3 p-lg-5 d-flex justify-content-center"
			id="experience">
			<div class="w-100">
				<h2 class="mb-5">Timeline</h2>

				<c:forEach items="${questions }" var="question">			

				<div
					class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
					<div class="resume-content">
						<h3 class="mb-0"><c:out value="${question.judul }"></c:out></h3>
						<div class="subheading mb-3"><c:out value="${question.from_user }"></c:out> </div>
						<p><c:out value="${question.question }"></c:out> </p>
						<a href='${pageContext.request.contextPath }/jawaban?id=${question.question_id}' >Comment</a>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary"></span>
					</div>
				</div>
				</c:forEach>

			</div>

		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex align-items-center"
			id="education">
			<div class="w-100">
				<h2 class="mb-5">Education</h2>

				<div
					class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
					<div class="resume-content">
						<h3 class="mb-0">University of Colorado Boulder</h3>
						<div class="subheading mb-3">Bachelor of Science</div>
						<div>Computer Science - Web Development Track</div>
						<p>GPA: 3.23</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">August 2006 - May 2010</span>
					</div>
				</div>

				<div
					class="resume-item d-flex flex-column flex-md-row justify-content-between">
					<div class="resume-content">
						<h3 class="mb-0">James Buchanan High School</h3>
						<div class="subheading mb-3">Technology Magnet Program</div>
						<p>GPA: 3.56</p>
					</div>
					<div class="resume-date text-md-right">
						<span class="text-primary">August 2002 - May 2006</span>
					</div>
				</div>

			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex align-items-center"
			id="skills">
			<div class="w-100">
				<h2 class="mb-5">Skills</h2>

				<div class="subheading mb-3">Programming Languages &amp; Tools</div>
				<ul class="list-inline dev-icons">
					<li class="list-inline-item"><i class="fab fa-html5"></i></li>
					<li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
					<li class="list-inline-item"><i class="fab fa-js-square"></i>
					</li>
					<li class="list-inline-item"><i class="fab fa-angular"></i></li>
					<li class="list-inline-item"><i class="fab fa-react"></i></li>
					<li class="list-inline-item"><i class="fab fa-node-js"></i></li>
					<li class="list-inline-item"><i class="fab fa-sass"></i></li>
					<li class="list-inline-item"><i class="fab fa-less"></i></li>
					<li class="list-inline-item"><i class="fab fa-wordpress"></i>
					</li>
					<li class="list-inline-item"><i class="fab fa-gulp"></i></li>
					<li class="list-inline-item"><i class="fab fa-grunt"></i></li>
					<li class="list-inline-item"><i class="fab fa-npm"></i></li>
				</ul>

				<div class="subheading mb-3">Workflow</div>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-check"></i> Mobile-First, Responsive
						Design</li>
					<li><i class="fa-li fa fa-check"></i> Cross Browser Testing
						&amp; Debugging</li>
					<li><i class="fa-li fa fa-check"></i> Cross Functional Teams</li>
					<li><i class="fa-li fa fa-check"></i> Agile Development &amp;
						Scrum</li>
				</ul>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex align-items-center"
			id="interests">
			<div class="w-100">
				<h2 class="mb-5">Interests</h2>
				<p>Apart from being a web developer, I enjoy most of my time
					being outdoors. In the winter, I am an avid skier and novice ice
					climber. During the warmer months here in Colorado, I enjoy
					mountain biking, free climbing, and kayaking.</p>
				<p class="mb-0">When forced indoors, I follow a number of sci-fi
					and fantasy genre movies and television shows, I am an aspiring
					chef, and I spend a large amount of my free time exploring the
					latest technology advancements in the front-end web development
					world.</p>
			</div>
		</section>

		<hr class="m-0">

		<section class="resume-section p-3 p-lg-5 d-flex align-items-center"
			id="awards">
			<div class="w-100">
				<h2 class="mb-5">Awards &amp; Certifications</h2>
				<ul class="fa-ul mb-0">
					<li><i class="fa-li fa fa-trophy text-warning"></i> Google
						Analytics Certified Developer</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> Mobile Web
						Specialist - Google Certification</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2009</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - University of Colorado Boulder - Adobe Creative Jam 2008
						(UI Design Category)</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 2<sup>nd</sup>
						Place - University of Colorado Boulder - Emerging Tech Competition
						2008</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 1<sup>st</sup>
						Place - James Buchanan High School - Hackathon 2006</li>
					<li><i class="fa-li fa fa-trophy text-warning"></i> 3<sup>rd</sup>
						Place - James Buchanan High School - Hackathon 2005</li>
				</ul>
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