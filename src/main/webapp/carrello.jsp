<%@page import="it.generationitaly.events.entity.Prenotazione"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="it.generationitaly.events.entity.Evento"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Carrello</title>
    </head>
    <body>
        <h1>Il Tuo Carrello</h1>
         <% List<Prenotazione> prenotazioni = (List<Prenotazione>) request.getAttribute("prenotazioni"); %>
            <% if(!prenotazioni.isEmpty()){ 
                   for(Prenotazione prenotazione : prenotazioni) { %>
                <div class="card-body">
			    <img src="<%= prenotazione.getEvento().getImmagine() %>">
                <p><%= prenotazione.getEvento().getNome() %></p>
                <p><%= prenotazione.getEvento().getData() %></p>
                <p><%= prenotazione.getEvento().getIndirizzo() %></p>
                    <% if (prenotazione.getEvento().isGratuito()){ %>
                    <p><%= "Gratuito" %></p>
                    <% } else {%>
                    <p><%= prenotazione.getEvento().getPrezzo() %></p>
                    <% }  %>
                
                <label for="biglietto">Biglietto di ingresso generale</label> 
	            <input id="biglietto" type="number" value="1">
                <div class="d-flex justify-content-between align-items-center">
                  <!-- Cancellare un evento?? -->
                  <form action="delete-event" method="post">>
                   <input type="hidden" name="id" value="<%= prenotazione.getEvento().getId() %>">
                   <button type="submit" name="remove" value="Remove event">Rimuovi evento</button>
                  </form>
                   <!-- Cancellare un evento?? -->
                </div>
                     <a href="carrello"><button class="buy" type="submit">Prenota</button></a>
			    </div>
			<% } else {  %>
                <p><%= "Il tuo carrello è vuoto..." %></p>
             <% } %>
            <p>Il totale è: </p>
			<form>
			<p><input type="submit" name ="submit" value=""></p>
			</form>
		<button href="servletCards" >Torna alla HOME</button>
    </body>
</html>