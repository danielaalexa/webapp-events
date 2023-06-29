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
         <% List<Evento> eventiSelezionati = (List<Evento>) request.getParameter("eventiSelezionati"); %>
        <form method="get" action="carrello" name="">
            <div class="card-body">
                <% if(!eventiSelezionati.isEmpty()) {
                       for(Evento evento : eventiSelezionati) { %>
			    <p class="card-text">
                   Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque ad expedita 
                </p>
                <p class="event-name"><%= evento.getNome() %></p>
                <p class="event-date"><%= evento.getData() %></p>
                <p class="event-citta"><%= evento.getCitta() %></p>
                
                <div class="d-flex justify-content-between align-items-center">
                  <button class="scopri-piu">Scopri di più</button>   
                </div>
			    </div>
			    <%     } 
                   }  else { %>
                <p><%= "0 results found..." %></p>
                <% } %>
			<p>Il totale è: </p>
			<p><input type="submit" name ="submit" value="compra"></p>
		</form>
		<button onclick="">Torna alla HOME</button>
    </body>
</html>