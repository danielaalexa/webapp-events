<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN | SIGNUP</title>
</head>
<body>
	<form method="post" action="loginServlet">
	<label for="loginUsername">Username</label>
	    <input type="text" id="loginUsername" name="loginUsername" placeholder="name@example.com">
	<label for="loginPassword">Password</label>
	    <input type="password" id="loginPassword" name="loginPassword" placeholder="Password">
	<%-- <a href="new-password.jsp">Forgot your password?</a> --%>
	<button type="submit">LOG IN</button>
	</form>
	<p>Don't have an account?</p>
	<a href="signup.jsp"><button type="button">CREATE ONE</button></a>
</body>
</html>