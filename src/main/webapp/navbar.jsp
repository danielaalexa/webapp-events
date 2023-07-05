
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="it.generationitaly.events.entity.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Sign Up</title>
<style>
header {
	background-color: #306437;
}
</style>
</head>
<body>
	<header class="p-3 mb-3 border-bottom">
		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32" role="img"
						aria-label="Bootstrap">
					<use xlink:href="#bootstrap"></use></svg>
				</a>

				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<li><a href="servletCards" class="nav-link px-2 link-light">Home</a></li>
					<li><a href="carrello.jsp" class="nav-link px-2 link-light">Carrello</a></li>
				</ul>
				<div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
					<a href="form-search.jsp"><button class="form-control">Ricerca...</button></a>
				</div>

				<div class="text-end">
					<%
					User user = (User) session.getAttribute("user");
					if (user == null) {
					%>
					<a href="login.jsp" class="nav-link px-2 link-light"
						style="text-align: left">LOG IN</a> <a href="signup.jsp"
						class="nav-link px-2 link-light" style="text-align: left">SIGN
						UP</a>
					<%
					} else {
					%>
					
					<div class="dropdown">
						<a href="#"
							class="d-block link-dark text-decoration-none dropdown-toggle"
							id="dropdownUser1"
							aria-expanded="false">
							<img src="https://github.com/mdo.png" alt="pfp" width="32" height="32" class="rounded-circle">
						</a>
						<ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
							<li><a class="dropdown-item" href="#">Profile</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="logout">LOG OUT</a></li>
						</ul>
						<a href="logout" class="nav-link px-2 link-light">LOG OUT</a>
					</div>
					<!--
					<a href="logout" class="nav-link px-2 link-light">LOG OUT</a>
					-->
					<%
					}
					%>
				</div>
			</div>
		</div>
	</header>
	<script src="/docs/5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>