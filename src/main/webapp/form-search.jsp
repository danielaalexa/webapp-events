<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cerca Evento</title>
</head>
<body>
<%-- <%@ include file="navbar.jsp" %> --%>
<form method="get" action="servletSearch">
	<label for="searchTag">Tipologia evento:</label>
	<select name="searchTag" id="searchTag">
	    <option></option>
		<option value="1">Music</option>
		<option value="2">Education</option>
		<option value="3">Comedy</option>
	</select>
	<br>
	<br>
	<label for="searchData">DA:</label>
	<input id="searchData" name="date1" type="date">
	<label for="searchData">A:</label>
	<input id="searchData" name="date2" type="date">
	<br>
	<br>
	<label for="searchCitta">Città:</label>
	<select id="searchCitta" name="citta">
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
	<br>
	<label for="searchNome">Nome:</label>
	<input id="searchNome" name="nome" type="text">
	<br>
	<br>
	<label for="searchPrezzo">Gratuito</label>
	<input id="searchPrezzo" name="gratuito" value="false"
		type="checkbox">
	<label for="searchPrezzo">Pagamento</label>
	<input id="searchPrezzo" name="gratuito" value="true"
		type="checkbox">
	<% if(request.getParameter("campiVuoti") != null) { %>
				<p style="color: red;">Riempi tutti i campi!</p>
			<% } %>
	<br>
	<br>
	<button type="submit">CERCA</button>	
</form>		
</body>
</html>