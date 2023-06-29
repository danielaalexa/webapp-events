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
         <% List<Prenotazione> prenotazioni = (List<Prenotazione>) request.getSession("prenotazioni"); %>
        <form method="get" action="carrello">
                <% if(!prenotazioni.isEmpty()) {
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
                <label>Biglietto di ingresso generale</label> 
                <input type="number">
                <div class="d-flex justify-content-between align-items-center">
                  <button class="conferma">Conferma</button>
                  <!-- Cancellare un evento?? -->
                   <input type="hidden" name="eventoId" value="<%= prenotazione.getEvento().getId() %>">
                   <button type="submit" class="remove-button">Remove</button>
                   <!-- Cancellare un evento?? -->
                </div>
			    </div>
			    <% } 
                   }  else { %>
                <p><%= "0 results found..." %></p>
                <% } %>
			<p>Il totale è: </p>
			<p><input type="submit" name ="submit" value=""></p>
		</form>
		<button href="servletCards.jsp" >Torna alla HOME</button>
    </body>
</html>