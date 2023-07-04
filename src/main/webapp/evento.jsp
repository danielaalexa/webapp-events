<%@page import="it.generationitaly.events.entity.Evento"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/43c824bcfa.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="evento.css" ></link>
<meta charset="ISO-8859-1">
<title>Evento</title>

</head>
<body>
	
	<% Evento evento = (Evento) request.getAttribute("evento"); %>
	<div class="event-container">
		
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

		<p class="event-tag"><%= evento.getTagEvento().getNome() %></p>
	<form method="get" action="carrello">


		<input type="hidden" name="id" value="<%= evento.getId() %>">
		<button type="submit" class="carrello"><i class="fa-solid fa-money-bill" style="color: #ffff;"></i> Prenota ora</button>
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
</body>
</html>