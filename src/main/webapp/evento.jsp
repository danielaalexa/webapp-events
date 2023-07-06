<%@page import="it.generationitaly.events.entity.Evento"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="it.generationitaly.events.entity.*" %>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Bootstrap 4, from LayoutIt!</title>

    <meta
      name="description"
      content="Source code generated using layoutit.com"
    />
    <meta name="author" content="LayoutIt!" />

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
	<link rel="stylesheet" href="event.css">
	<script src="https://kit.fontawesome.com/43c824bcfa.js" crossorigin="anonymous"></script>
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



</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>

