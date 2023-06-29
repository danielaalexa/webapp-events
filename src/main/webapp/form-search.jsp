<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cerca Evento</title>
</head>
<body>
<label for="searchTag">Tipologia evento</label>
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
<input id="searchCitta" name="citta" type="text">
<br>
<br>
<label for="searchNome">Nome:</label>
<input id="searchNome" name="nome" type="text">
<br>
<br>
<label for="searchPrezzo">Gratuito</label>
<input id="searchPrezzo" name="gratuito" value="gratuito" type="checkbox">
<label for="searchPrezzo">Pagamento</label>
<input id="searchPrezzo" name="pagamento" value="pagamento" type="checkbox">
</body>
</html>