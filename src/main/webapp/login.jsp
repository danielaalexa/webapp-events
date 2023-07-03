<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="login.css">

<title>LOGIN</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<section class="h-100 gradient-form" style="background-color: #eee;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card rounded-3 text-black">
						<div class="row g-0">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">
									<div class="text-center">
										<img src="" style="width: 185px;" alt="logo">
										<h4 class="mt-1 mb-5 pb-1">...</h4>
									</div>
								</div>
								<form method="post" action="loginServlet">
									<div class="form-outline mb-4">
										<input class="form-control" type="text" id="loginUsername"
											name="username" placeholder="Username">
									</div>
									<div class="form-outline mb-4">
										<input class="form-control" type="password" id="loginPassword"
											name="password" placeholder="Password">
									</div>
									<%-- <a href="new-password.jsp">Forgot your password?</a> --%>
									<% if(request.getParameter("credenzialiErrate") != null) { %>
		                      		<p style="color: red;">Credenziali errate!</p>
		                        	<% } %>
									<button type="submit">LOG IN</button>
									<div
										class="d-flex align-items-center justify-content-center pb-4">
										<p class="mb-0 me-2">Don't have an account?</p>
										<a href="signup.jsp"><button type="button"
												class="btn btn-outline-danger">CREATE ONE</button></a>
									</div>
								</form>
							</div>
						</div>
						<div class="col-lg-6 d-flex align-items-center gradient-custom-2">
							<div class="text-white px-3 py-4 p-md-5 mx-md-4"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>