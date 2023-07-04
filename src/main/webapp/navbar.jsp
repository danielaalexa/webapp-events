<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Sign Up</title>
<style>

.jaitanav{
	position: fixed;
	top: 0;
}

</style>
</head>
<nav class="navbar jaitanav navbar-expand-md navbar-dark bg-dark py-3">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="servletCards">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="signup.jsp">Sign Up</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login.jsp">Login</a>
        </li>
    	<li>
    	<form class="d-flex" role="search" method="get" action="form-search.jsp">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit" >Search</button>
      </form>
      	</li>
      </ul>
      
      
  
    </div>
  </div>
</nav>
</html>