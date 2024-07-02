<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<div class="container text-center bg-dark">
		<h1 class="text-light">Edit your Team info</h1>
		<h2><c:out value="${teams.name}" /></h2>
		<div class="d-flex justify-content-center">
			<div class="card text-bg-success mb-3 " style="max-width: 18rem;">
				<div class="card-header">Enter your team info here!</div>
				<div class="card-body">
					<form:form action="/update/team/${teams.id}" method="post"
						modelAttribute="teams">
						<div>
							<form:label path="name">Name:</form:label>
							<form:errors class="text-light" path="name" />
							<form:input class="mb-3" path="name" />
						</div>
						<div>
							<form:label path="skill">Skill Level (1-5):</form:label>
							<form:errors class="text-warning" path="skill" />
							<form:select path="skill">
							<form:option value="1">1</form:option>
							<form:option value="2">2</form:option>
							<form:option value="3">3</form:option>
							<form:option value="4">4</form:option>
							<form:option value="5">5</form:option>
							</form:select>
					
						</div>
						<div>
							<form:label path="gameDay">Game Day:</form:label>
							<form:errors class="text-light" path="gameDay" />
							<form:input class="mb-3" path="gameDay" />
						</div>
						<input type= "hidden" name= "_method" value ="put"/>
						<input type="submit" class="btn btn-warning mt-3" value="Submit" />
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>