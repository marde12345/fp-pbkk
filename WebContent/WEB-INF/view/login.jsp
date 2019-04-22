<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<c:set var="contextPathBootstrap" value="${contextPath}/resources/admin"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Custom fonts for this template-->
<link href="${contextPathBootstrap}/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="${contextPathBootstrap}/css/sb-admin.css" rel="stylesheet">
<style type="text/css">
body { 
  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body background="${contextPath }/resources/img/landingpagelogin.jpg">
  <div class="container fadeInDown">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <div class="form-label-group">
              <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
              <label for="inputEmail">Email</label>
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
              <label for="inputPassword">Password</label>
            </div>
          </div>
          
          <a class="btn btn-primary btn-block" href="index.html">Login</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="register.html">Daftar</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="${contextPath }/vendor/jquery/jquery.min.js"></script>
  <script src="${contextPath }/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${contextPath }/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>