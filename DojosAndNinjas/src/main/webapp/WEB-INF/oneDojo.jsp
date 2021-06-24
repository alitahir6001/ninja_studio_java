<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Dojo and its Ninjas</title>
</head>
<body>
	
	<h1 class="jumbotron">Check out this Dojo and their Ninjas</h1>
		<a href="/">Home</a>
		<br><br>
		
		<h3>Welcome to Dojo "${thisDojo.name }"</h3>
		<br>
		<h4>Here are the Ninjas</h4>
		
		<table class="table table-dark">
        <thead>
          <tr>
            
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Age</th>

          </tr>
        </thead>
        <tbody>
        <c:forEach items='${ thisDojo.ninjas }' var='ninjas'>
            <tr>  

                <td>${ninjas.firstName}</td>
                <td>${ninjas.lastName}</td>
                <td>${ninjas.age}</td>
            </tr>
        </c:forEach>
        </tbody>
      </table>

</body>
</html>