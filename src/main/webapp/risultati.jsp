<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="it.generationitaly.events.entity.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Risultati</title>
	</head>
	<body>
		<% List<Evento> eventi = (List<Evento>) request.getAttribute("eventi"); %>
		<table>
			<thead>
				<tr>
					<th>NOME</th>
					<th>DATE</th>
					<th>CITTA</th>
					<th>DESCRIZIONE</th>
					<th>INDIRIZZO</th>
					<th>IMMAGINE</th>
					<th>GRATUITO</th>
					<th>PREZZO</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<% if(!eventi.isEmpty()) { %>
					<% for(Evento evento: eventi) { %>
					<tr>
						<td><%= evento.getNome() %></td>
						<td><%= evento.getData() %></td>
						<td><%= evento.getCitta() %></td>
						<td><%= evento.getDescrizione() %></td>
						<td><%= evento.getIndirizzo() %></td>
						<td><%= evento.getImmagine() %></td>
						<td><%= evento.isGratuito() %></td>
						<td><%= evento.getPrezzo() %></td>
						<td>
					        <form method="get" action="evento">
                                <input type="hidden" name="id" value="<%= evento.getId() %>">
                                <button type="submit">INFO</button>
                            </form>	
						</td>
					</tr>
				<% } %>
				<% } else { %>
					<tr>
						<td colspan="8">Nessun risultato</td>
					</tr>
				<% } %>
			</tbody>
		</table>
	</body>
</html>