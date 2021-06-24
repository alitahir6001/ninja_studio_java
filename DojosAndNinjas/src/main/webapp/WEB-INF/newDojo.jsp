<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Create a Dojo</title>
</head>
<body>

	<h1 class="jumbotron">Let's make a Dojo</h1>
		<a href="/">Home</a>
		<br><br>
	
	
	<form:form action="/makeDojo" method="post" modelAttribute="addDojo">
	<form:input path="name" style="width: 350px" placeholder="What is the name of the new Dojo?" />
  	<form:errors path="name" class="text-danger" />
    <input type="submit" value="Add A Dojo" class="btn btn-sm btn-primary" />
	
	
	</form:form>

</body>
</html>