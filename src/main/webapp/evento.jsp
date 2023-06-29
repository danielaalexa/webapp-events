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
	<h1>NOME EVENTO</h1>
	<% Evento evento = (Evento) request.getAttribute("evento"); %>
	<form method="get" action="">
			<img src="<%= evento.getImmagine() %>">
			<p><%= evento.getNome() %></p>
			<p><%= evento.getData() %></p>
			<p><%= evento.getIndirizzo() %></p>
			<% if (evento.isGratuito()){ %>
			<p><%= "Gratuito" %></p>
			<% } else {%>
			<p><%= evento.getPrezzo() %></p>
			<% }  %>
			<label>Biglietto di ingresso generale</label> 
			<input type="number">
			
			    <input type="hidden" value="<% evento.getId(); %>">
				<button type="submit" class="carrello">Aggiungi al carrello</button>
		
		<% } 
                   }  else { %>
		<p><%= "0 results found..." %></p>
		<% } %>
		<p>Il totale è:</p>
		<p>
			<input type="submit" name="submit" value="">
		</p>
	</form>
	<button href="servletCards">Torna alla HOME</button>
</body>
</html>