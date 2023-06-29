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
         <% List<Evento> eventiSelezionati = (List<Evento>) request.getParameter("eventiSelezionati"); %>
        <form method="get" action="carrello" name="">
            <div class="card-body">
                <% if(!eventiSelezionati.isEmpty()) {
                       for(Evento evento : eventiSelezionati) { %>
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
                <div class="d-flex justify-content-between align-items-center">
                  <button class="scopri-piu">Scopri di più</button>   
                </div>
			    </div>
			    <% } 
                   }  else { %>
                <p><%= "0 results found..." %></p>
                <% } %>
			<p>Il totale è: </p>
			<p><input type="submit" name ="submit" value=""></p>
		</form>
		<button href="home.jsp" >Torna alla HOME</button>
    </body>
</html>