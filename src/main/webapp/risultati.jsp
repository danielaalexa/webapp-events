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
<title>Risultati</title>
<link rel="stylesheet" href="carousel.css" />
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />

<script src="https://kit.fontawesome.com/43c824bcfa.js"
	crossorigin="anonymous"></script>

<meta name="theme-color" content="#712cf9" />
<meta charset="ISO-8859-1">
<title>Stivaletto | Homepage</title>
</head>
<body>
<%@ include file="navbar.jsp" %>
	<%
	List<Evento> eventi = (List<Evento>) request.getAttribute("eventi");
	%>
	<div class="container mt-3">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<!-- Qui inizia La Card -->
			<%
			for (Evento evento : eventi) {
			%>
			<div class="col">
				<div class="card shadow-sm">
					<!-- Immagine evento -->
					<img src="<%=evento.getImmagine()%>" alt="">
					<rect width="100%" height="100%" fill="#55595c" />
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
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
	<footer class="text-body-secondary py-5">
		<div class="container">
			<p class="float-end mb-1">
				<a href="#">Back to the top</a>
			</p>
			<p class="mb-0">
				<%@ include file="foother.html"%>
			</p>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>