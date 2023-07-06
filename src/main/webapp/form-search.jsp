<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="form_source.css">
<title>Ricrca | Stivaletto</title>
</head>
<body>
	<%@ include file="navbar.jsp" %>
	<section class="h-100 gradient-form" style="background-color: #eee;">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="row g-0">
						<div class="col-lg-6">
							<div class="text-center">
								<img src="" style="width: 185px;" alt="logo">
								<h4 class="mt-1 mb-5 pb-1">...</h4>
							</div>
							<form method="get" action="servletSearch">
								<input class="form-control" list="GFGOptions" id="searchNome" name="nome" placeholder="Nome evento">
									<br>
									<label id="searchCitta">Città:</label>
									<select class="form-control" list="GFGOptions" id="searchCitta" name="citta">
									<option value="Napoli">Napoli</option>
									<option value="Milano">Milano</option>
									<option value="Roma">Roma</option>
									<option value="Torino">Torino</option>
									<option value="Catania">Catania</option>
									<option value="Bologna">Bologna</option>
									<option value="Genova">Genova</option>
									<option value="Palermo">Palermo</option>
									<option value="Bari">Bari</option>
									<option value="Firenze">Firenze</option>
								</select>
								<br>
								<button id="searchTag" name="searchTag" value="1"
									class="btn btn-dark" type="button">Music</button>
								<button id="searchTag" name="searchTag" value="2"
									class="btn btn-dark" type="button">Education</button>
								<button id="searchTag" name="searchTag" value="3"
									class="btn btn-dark" type="button">Comedy</button>
									<br>
							    <button class="btn btn-dark" type="submit">Search</button>
							</form>
							<%--
							<hr>
							<hr>
							<form method="get" action="searchByNameAndCityServlet">
								<input class="form-control" list="GFGOptions" id="searchNome"
									name="nome" placeholder="Nome evento"> <br> <label
									id="searchCitta">Città:</label> <select class="form-control"
									list="GFGOptions" id="searchCitta" name="citta">
									<option></option>
									<option value="Napoli">Napoli</option>
									<option value="Milano">Milano</option>
									<!-- Other city options... -->
								</select> <br>
								<button class="btn btn-dark" type="submit">Search(this search button only for the second form)</button>
							</form>
							--%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
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
</body>
</html>