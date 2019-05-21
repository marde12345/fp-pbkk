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
<title>Tambah Pertanyaan</title>
</head>
<body>
<form:form method="POST" action="addQuestion" modelAttribute="modelQuestion">
<form:input path="judul"/>
<form:label path="judul">Judul</form:label>
<form:input path="question"/>
<form:label path="question">Question</form:label>
<button type="submit" >Tambah</button>
</form:form>
</body>
</html>