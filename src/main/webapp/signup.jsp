<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/sign-up">
    <label for="signupNome">Nome</label>
	    <input type="text" id="signupNome" name="nome">
    <label for="signupCognome">Cognome</label>
	    <input type="text" id="signupCognome" name="Cognome">
	 <p>Sesso</p>   
	<label for="signupSessoM">M</label>
	    <input type="radio" id="signupSessoM" name="sessoM">
	<label for="signupSessoF">F</label>
	    <input type="radio" id="signupSessoF" name="sessoF">
	<label for="signupNascita">Data di nascita</label>
	    <input type="date" id="signupNascita" name="nascita">
	<label for="signupUsername">Username</label>
	    <input type="text" id="signupUsername" name="signupUsername" placeholder="name@example.com">
	<label for="signupPassword">Password</label>
	    <input type="password" id="signupPassword" name="signupPassword" placeholder="Password">
	 <p>Inserisci il metodo di pagamento:</p>
	 <label for="signupCarta">Carta</label>
	    <input type="radio" id="signupCarta" name="carta">
	<label for="signupPaypal">Paypal</label>
	    <input type="radio" id="signupPaypal" name="paypal">
	<label for="signupPagopa">Pagopa</label>
	    <input type="radio" id="signupPagopa" name="pagopa">
	<label for="signupSatispay">Satispay</label>
	    <input type="radio" id="signupSatispay" name="satispay">
	<button type="submit">SIGN UP</button>  
    </form>
</body>
</html>