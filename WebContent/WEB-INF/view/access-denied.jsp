<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
<title>Oops!!!</title>
</head>
<body class="bg-dark text-white py-5">
	<div class="container py-5">
		<div class="row">
			<div class="col-md-2 text-center">
				<p>
					<i class="fa fa-exclamation-triangle fa-5x"></i><br />Status Code:
					403
				</p>
			</div>
			<div class="col-md-10">
				<h3>OPPSSS!!!! Sorry...</h3>
				<p>
					Sorry, your access is refused due to security reasons of our server
					and also our sensitive data.<br />Please go back to the previous
					page to continue browsing.
				</p>
				<a class="btn btn-danger"
					href="${pageContext.request.contextPath }/">Go Back</a>
			</div>
		</div>
	</div>
</body>
</html>