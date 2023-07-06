
<%@page import="it.generationitaly.events.entity.Evento"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="it.generationitaly.events.entity.*" %>
<html>
<head>
<script src="https://kit.fontawesome.com/43c824bcfa.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="evento.css" ></link>
	<link rel="stylesheet" href="event.css">
	
<meta charset="UTF-8">
<title>Evento</title>

</head>

  <body>

<div class="container-fluid">
	<div class="row">
	 
		<div class="col-md-8">
<% Evento evento = (Evento) request.getAttribute("evento"); %>
		<div class="image-container">
		<img src="<%= evento.getImmagine() %>" class="evento-immagine">
		</div>
		<h1 class="evento-nome"><%= evento.getNome() %></h1>
		<p><i class="fa-solid fa-calendar" style="color: #f0a400;" ></i> <%= evento.getData()%></p>
		<p><i class="fa-solid fa-location-dot" style="color: #f0a400;"></i> <%= evento.getCitta() %></p>
		<p><i class="fa-solid fa-house" style="color: #f0a400;"></i> <%= evento.getIndirizzo() %></p>
		<p class="evento-desc"><%= evento.getDescrizione() %></p>
		<% if (evento.isGratuito()){ %>
		<p class="event-type"><%= "Gratuito" %></p>
		<% } else { %>
		<p class="event-type"><i class="fa-solid fa-money-bill"></i> <%= evento.getPrezzo() %></p>
		<% }  %>
		<p class="event-tag"><%= evento.getTagEvento() %></p>
	<form method="get" action="carrello">
		<input type="hidden" name="id" value="<%= evento.getId() %>">
		<button type="submit" class="carrello"><i class="fa-solid fa-money-bill" style="color: #ffff;"></i> Prenota ora</button>
	</form>
	<a href="servletCards"><button ><i class="fa-solid fa-house" style="color: #ffff;"></i> Torna alla HOME</button></a>
	</div>
		
	
		<div class="col-md-4">
			<h1>Altri Eventi che ti potreberro interessare</h1>
	
			  <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="https://images.unsplash.com/photo-1561489413-985b06da5bee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button>Scopri di piu</button>
  </div>
</div>
<br>
			  <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="https://images.unsplash.com/photo-1561489413-985b06da5bee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <button> Scopri di piu</button>
  </div>
</div>
<br>



	<form method="get" action="carrello">
		<input type="hidden" name="eventoId" value="<%= evento.getId() %>">
		<button type="submit"><i class="fa-solid fa-money-bill" style="color: #ffff;"></i> Prenota ora</button>
	</form>
	<a href="servletCards"><button ><i class="fa-solid fa-house" style="color: #ffff;"></i> Torna alla HOME</button></a>
	</div>
	<footer class="text-body-secondary py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to the top</a>
			</p>
			<p class="mb-0">
				<%@ include file="foother.html" %>
			</p>
		</div>
	</footer>

</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>

