<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Create a Ninja</title>
</head>
<body>

	<h1 class="jumbotron">Let's make a Ninja</h1>
		<a href="/">Home</a>
		<br><br>
	
	
	<form:form action="/makeNinja" method="post" modelAttribute="addNinja">
	<form:input path="firstName" style="width: 350px" placeholder="What is the first name of the new Ninja?" />
  	<form:errors path="firstName" class="text-danger" />
  	
  	<form:input path="lastName" style="width: 350px" placeholder="What is the last name of the new Ninja?" />
  	<form:errors path="lastName" class="text-danger" />
  	
  	<form:input path="age" type="number" style="width: 350px" placeholder="What is the age of the new Ninja?" />
  	<form:errors path="firstName" class="text-danger" />
  	
  	<select name="dojo">
	  	<c:forEach items="${allDojos }" var = "dojos">
	  		<option value="${dojos.id }" >${dojos.name } </option>
	  	
	  	</c:forEach>
  	</select>
  	
    <input type="submit" value="Add A Ninja" class="btn btn-sm btn-primary" />
	
	
	</form:form>


</body>
</html>