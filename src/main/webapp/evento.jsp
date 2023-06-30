<%@page import="it.generationitaly.events.entity.Evento"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Evento</title>
</head>
<body>
	<% Evento evento = (Evento) request.getAttribute("evento"); %>
		<h1><%= evento.getNome() %></h1>
		<img src="<%= evento.getImmagine() %>">
		<p><%= evento.getData()%></p>
		<p><%= evento.getCitta() %></p>
		<p><%= evento.getIndirizzo() %></p>
		<p><%= evento.getDescrizione() %></p>
		<% if (evento.isGratuito()){ %>
		<p><%= "Gratuito" %></p>
		<% } else { %>
		<p><%= evento.getPrezzo() %></p>
		<% }  %>
		<p><%= evento.getTagEvento().getNome() %></p>
	<form method="post" action="carrello">
		<input type="hidden" name="id" value="<%= evento.getId() %>">
		<button type="submit" class="carrello">Prenota ora</button>
	</form>
	<a href="servletCards"><button >Torna alla HOME</button></a>
</body>
</html>