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
<section class="h-1000 gradient-form" style="background-color: #eee;">
	<%@ include file="navbar.jsp"%>
		<div class="container py-5 h-800">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-xl-10">
					<div class="card rounded-3 text-black">
						<div class="row g-0">
							<div class="col-lg-6">
								<div class="card-body p-md-5 mx-md-4">
									<div class="text-center">
										<img src="https://cdn.logo.com/hotlink-ok/logo-social.png" style="width: 185px;" alt="logo">
										<h4 class="mt-1 mb-5 pb-1">Stivaletto</h4>
									</div>
							<form method="get" action="servletSearch">
								<input class="form-control" list="GFGOptions" id="searchNome" name="nome" placeholder="Nome evento">
									<br>
									<label id="searchCitta">Città:</label>
									<select class="form-control" list="GFGOptions" id="searchCitta" name="citta">
									<option></option>
									<option value="Bari">BARI</option>
									<option value="Bologna">BOLOGNA</option>
									<option value="Catania">CATANIA</option>
									<option value="Firenze">FIRENZE</option>
									<option value="Genova">GENOVA</option>
									<option value="Milano">MILANO</option>
									<option value="Napoli">NAPOLI</option>
									<option value="Palermo">PALERMO</option>
									<option value="Roma">ROMA</option>
									<option value="Torino">TORINO</option>
								</select>
								<br>
								<div input type="submit">
                            <input type="radio" name="searchTag" value="1" /> Musica
                            <input type="radio" name="searchTag" value="2" /> Commedia
                            <input type="radio" name="searchTag" value="3" /> Educazione
                          
                            </div>
                             <br>
                             
							<button type="submit">Cerca</button>
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
					<div class="col-lg-6 d-flex align-items-center">
							<div class="text-white px-3 py-4 p-md-5 mx-md-4">
							<img style="opacity: 0.4;" class="img-fluid" src="https://sostegno20.it/wp-content/uploads/2022/05/bambini-geografia-cartina-muta-italia.jpg">
							</div>
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