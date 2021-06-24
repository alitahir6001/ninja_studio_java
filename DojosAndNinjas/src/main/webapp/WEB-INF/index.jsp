<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<title>Welcome to Jurassic Park</title>
</head>
<body>
	<a href="/newDojo">Add a Dojo</a> || <a href="/newNinja">Add a Ninja</a>
	
	<br><br>
	<h1 class="jumbotron">Hello Pakfro</h1>
	
	<table class="table table-dark">
        <thead>
          <tr>
            
            <th scope="col">Dojo Name</th>

          </tr>
        </thead>
        <tbody>
        <c:forEach items='${ allDojos }' var='dojos'>
            <tr>  
                <!--  <td><a href="/languages/${lang.id }">${lang.name}</a></td>
                <td><a href="/languages/edit/${lang.id}">Edit</a> | <a href="/languages/delete/${lang.id }">Delete</a></td> -->
                <td><a href="/showDojo/${dojos.id}">${dojos.name}</a></td>
            </tr>
        </c:forEach>
        </tbody>
      </table>
	
	
</body>
</html>