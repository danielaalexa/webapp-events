<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="it.generationitaly.events.entity.Evento"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="author" content="Livingstone Amang" />
<meta name="generator" content="Hugo 0.112.5" />
<link rel="stylesheet" href="carousel.css" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/43c824bcfa.js"
	crossorigin="anonymous"></script>
<meta name="theme-color" content="#712cf9" />
<meta charset="ISO-8859-1">
<title>Risultati</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<body>
	<%
	List<Evento> eventi = (List<Evento>) request.getAttribute("eventi");
	%>
	<div class="container">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<div class="col">
				<div class="card shadow-sm">
					<%
					if (!eventi.isEmpty()) {
					%>
					<%
					for (Evento evento : eventi) {
					%>
					<!-- Immagine evento -->
					<img src="<%=evento.getImmagine()%>" alt="immagine-evento">
					<div class="card-body">
						<p class="card-text">
							<!-- Qui inizia la descrizione dell'evento -->
							<%=evento.getDescrizioneCard()%>
							<!-- Qui inizia il nome dell'evento -->
						<p class="event-name"><%=evento.getNome()%></p>
						<!-- Qui inizia la data dell'evento -->
						<p class="event-date"><%=evento.getData()%></p>
						<!-- Qui inizia l'indirizzo dell'evento -->
						<p class="event-indirizzo"><%=evento.getIndirizzo()%></p>
						<div class="d-flex justify-content-between align-items-center">
							<a href="evento?id=<%=evento.getId()%>"><button
									class="scopri-piu">Scopri di più</button></a>
						</div>
					</div>
					<%
					}
					%>
					<%
					} else {
					%>
					<div>
						<div>Nessun risultato</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>