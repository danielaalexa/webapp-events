<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGNUP</title>
</head>
<body>
<form method="post" action="/sign-up">
    <label for="signupNome">Nome</label>
	    <input type="text" id="signupNome" name="nome">
    <label for="signupCognome">Cognome</label>
	    <input type="text" id="signupCognome" name="cognome">
	 <p>Sesso</p>   
	<label for="signupSessoM">M</label>
	    <input type="radio" id="signupSessoM" name="sesso" value="M">
	<label for="signupSessoF">F</label>
	    <input type="radio" id="signupSessoF" name="sesso" value="F">
	<label for="signupNascita">Data di nascita</label>
	    <input type="date" id="signupNascita" name="dataNascita">
	<label for="signupUsername">Username</label>
	    <input type="text" id="signupUsername" name="username" placeholder="User123...">
	<label for="signupPassword">Password</label>
	    <input type="password" id="signupPassword" name="password" placeholder="Password">
	    <label for="signupEmail">Email</label>
	    <input type="text" id="signupEmail" name="email" placeholder="place.holder123@...">
	 <p>Inserisci il metodo di pagamento:</p>
	 <label for="signupCarta">Carta</label>
	    <input type="radio" id="signupCarta" name="metodoPagamentoId" value="1">
	<label for="signupPaypal">Paypal</label>
	    <input type="radio" id="signupPaypal" name="metodoPagamentoId" value="2">
	<label for="signupPagopa">Pagopa</label>
	    <input type="radio" id="signupPagopa" name="metodoPagamentoId" value="3">
	<label for="signupSatispay">Satispay</label>
	    <input type="radio" id="signupSatispay" name="metodoPagamentoId" value="4">
	<button type="submit">SIGN UP</button>  
    </form>
</body>
</html>