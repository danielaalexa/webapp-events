<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="form_source.css">
<title>Cerca Evento</title>
</head>
<body>
<%-- <%@ include file="navbar.jsp" %> --%>
<section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="row g-0">
                  <div class="col-lg-6">
      
                      <div class="text-center">
                        <img src=""
                          style="width: 185px;" alt="logo">
                        <h4 class="mt-1 mb-5 pb-1">...</h4>
                      </div>
      
<form method="get" action="servletSearch">
	<label id="searchTag">Tipologia evento:</label>
	<select class="form-control" id="searchTag"
			list="GFGOptions">
	    <option></option>
		<option value="1">Music</option>
		<option value="2">Education</option>
		<option value="3">Comedy</option>
		</select>
	<br>
	
	<label for="searchData">DA:</label>
	<input id="searchData" name="date1" type="date">
	<br>
	<label for="searchData">A:</label>
	<input id="searchData" name="date2" type="date">
	<br>
	<br>
	<label id="searchCitta">Città:</label>
	 <select class="form-control"
                list="GFGOptions" id="searchCitta">
	    <option></option>
		<option value="1">Napoli</option>
		<option value="2">Milano</option>
		<option value="3">Roma</option>
		<option value="4">Torino</option>
		<option value="5">Catania</option>
		<option value="6">Bologna</option>
		<option value="7">Genova</option>
		<option value="8">Palermo</option>
		<option value="9">Bari</option>
		<option value="10">Firenze</option>
		</select>
	<br>
	
	<div class="form-outline mb-4">
                        <input type="text" id="searchNome" class="form-control"
                          placeholder="Nome evento"name = "nome"/>
                      </div>
	<fieldset>
        <input id="searchPrezzo" botton type="checkbox"  name="gratuito" value="false"/> Gratuito
        <br>
         <input id="searchPrezzo" botton type="checkbox" name="pagamento" value="true"/> Pagamento
                </fieldset>
	
	<%
		if (request.getParameter("campiVuoti") != null) {
		%>
				<p style="color: red;">Riempi tutti i campi!</p>
			<%
			}
			%>
	<br>
	<br>
	<button class="btn btn-success" type="submit">CERCA</button>	
</form>	
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
				<%@ include file="foother.html" %>
			</p>
		</div>
	</footer>
</body>
</html>