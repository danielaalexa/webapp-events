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
                
                <label for="biglietto">Biglietto di ingresso generale</label> 
	            <input id="biglietto" type="number" value="1">
                
                <div class="d-flex justify-content-between align-items-center">
                  <button class="conferma">Conferma</button>
                  <!-- Cancellare un evento?? -->
                  <form action="delete-event" method="post">>
                   <input type="hidden" name="id" value="<%= prenotazione.getEvento().getId() %>">
                   <input type="submit" name="remove" value="Remove event">
                  </form>
                   <!-- Cancellare un evento?? -->
                </div>
			    </div>
			    <% } 
                   }  else { %>
                <p><%= "0 results found..." %></p>
                <% } %>
			<p>Il totale è: </p>
			<form>
			<p><input type="submit" name ="submit" value=""></p>
			</form>
		<button href="servletCards" >Torna alla HOME</button>
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