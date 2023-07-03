<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,300;0,400;0,500;0,600;0,800;0,900;1,100;1,600;1,900&display=swap");
.btn {
  background-color: #f1c27b;
  width: 80%;
  color: white;
  border: none;
  padding: 8px;
  font-family: "Poppins";
  font-weight: 500;
  margin-bottom: 10px;
}
.btn:hover {
  background-color: #f38600;
  transform: scale(1.1);
  font-weight: bolder;
  color: white;
}
        
        </style>
        
        <title>SIGNUP</title>
    </head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="registrazione.js"></script>
 <section class="h-100 gradient-form" style="background-color: #eee;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">
  
                  <div class="text-center">
                    <img src=""
                    style="width: 185px;" alt="logo">
                    <h4 class="mt-1 mb-5 pb-1">...</h4>
                  </div>
<form method="post" action="sign-up">
    <div class="form-outline mb-4">
    <label  class="form-label" for="signupNome">Nome</label>
	    <input class="form-control type="text" id="signupNome" name="nome">
        </div>
        <div class="form-outline mb-4">
   
    <label class="form-label" for="signupCognome">Cognome</label>
	    <input  class="form-control" type="text" id="signupCognome" name="cognome">
        </div>
	 <p>Sesso</p>   
	<label for="signupSessoM">M</label>
	 <input type="radio" id="signupSessoM" name="sesso" value="M">
	<label for="signupSessoF">F</label>
	    <input type="radio" id="signupSessoF" name="sesso" value="F">
        <div class="form-outline mb-4">
	<label  class="form-label" for="signupNascita">Data di nascita</label>
	    <input class="form-control" type="date" id="signupNascita" name="dataNascita">
        </div>
        <div class="form-outline mb-4">
	<label for="signupUsername">Username</label>
	    <input  class="form-control" type="text" id="signupUsername" name="username" placeholder="User123...">
        </div>
        <div class="form-outline mb-4">
	<label class="form-label" for="signupPassword">Password</label>
	    <input class="form-control"type="password" id="signupPassword" name="password" placeholder="Password">
        </div>
        <div class="form-outline mb-4">
	    <label class="form-label" for="signupEmail">Email</label>
	    <input  class="form-control" type="text" id="signupEmail" name="email" placeholder="place.holder123@...">
	    <br>
	 <p>Inserisci il metodo di pagamento:</p>
	 <label for="signupCarta">Carta</label>
	    <input type="radio" id="signupCarta" name="metodoPagamentoId" value="1">
	<label for="signupPaypal">Paypal</label>
	    <input type="radio" id="signupPaypal" name="metodoPagamentoId" value="2">
	<label for="signupPagopa">Pagopa</label>
	    <input type="radio" id="signupPagopa" name="metodoPagamentoId" value="3">
	<label for="signupSatispay">Satispay</label>
	    <input type="radio" id="signupSatispay" name="metodoPagamentoId" value="4">
        <div class="d-flex align-items-center justify-content-center pb-4">
	<button type="submit" class="btn btn-outline-danger" >SIGN UP</button>  
    </form>
</body>
</html>