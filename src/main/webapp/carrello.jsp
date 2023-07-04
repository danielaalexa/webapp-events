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
            <% if(prenotazioni.isEmpty()){ %>
            	 <p><%= "Il tuo carrello è vuoto..." %></p>
            <% } else {
                     for(Prenotazione prenotazione : prenotazioni) { %>
                 <div class="card-body">
			         <img src="<%= prenotazione.getEvento().getImmagine() %>">
                     <p><%= prenotazione.getEvento().getNome() %></p>
                     <p><%= prenotazione.getEvento().getData() %></p>
                     <p><%= prenotazione.getEvento().getIndirizzo() %></p>
                     <% if (prenotazione.getEvento().isGratuito()){ %>
                     <p><%= "Gratuito" %></p>
                     <% } else {%>
                     <p>Prezzo</p>
                     <p><%= prenotazione.getEvento().getPrezzo() + " €" %></p>
                     <% }  %>
                 <form method="post" action="carrello">
                     <input type="hidden" name="idPrenotazione" value="<%= prenotazione.getId() %>">
                     <label for="quantita">Biglietto di ingresso</label> 
	                 <input id="quantita" name="quantita" type="number" min="1" max="25">
                 </form>
                     <!-- Cancellazione-->
                 <form method="post" action="delete-event">
                     <input type="hidden" name="id" value="<%= prenotazione.getId() %>">
                     <button type="submit" name="remove" value="Remove event">Elimina</button>
                 </form>
                 </div>        
                     <% } %>
            <p>Il totale è: <%  %></p>
                     <% } %>
			       <a href="carrello?buy"><button class="buy" type="submit">Prenota</button></a>
		<a href="servletCards"><button >Torna alla HOME</button></a>
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