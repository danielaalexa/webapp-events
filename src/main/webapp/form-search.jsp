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
		<option value="music">Music</option>
		<option value="education">Education</option>
		<option value="comedy">Comedy</option>
	</select>
	<br>
	<br>
	<label for="searchData">DA:</label>
	<input id="searchData" name="dataInizio" value="dataInizio" type="date">
	<label for="searchData">A:</label>
	<input id="searchData" name="dataFine" value="dataFine" type="date">
	<br>
	<br>
	<label for="searchCitta">Città:</label>
	<select id="searchCitta" name="citta">
		<option value="NA">Napoli</option>
		<option value="MI">Milano</option>
		<option value="RO">Roma</option>
		<option value="TO">Torino</option>
		<option value="CT">Catania</option>
		<option value="BO">Bologna</option>
		<option value="GE">Genova</option>
		<option value="PA">Palermo</option>
		<option value="BA">Bari</option>
		<option value="FI">Firenze</option>
	</select>
	<br>
	<br>
	<label for="searchNome">Nome:</label>
	<input id="searchNome" name="nome" type="text">
	<br>
	<br>
	<label for="searchPrezzo">Gratuito</label>
	<input id="searchPrezzo" name="gratuito" value="gratuito"
		type="checkbox">
	<label for="searchPrezzo">Pagamento</label>
	<input id="searchPrezzo" name="pagamento" value="pagamento"
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