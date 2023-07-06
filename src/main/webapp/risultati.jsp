<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="it.generationitaly.events.entity.Evento"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
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
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="row g-0">
                  <div class="col-lg-6">
                       <div class="text-center">
                        <a href="home.jsp"><img src=""
                          style="width: 185px;" alt="logo"></a>
                        <h4 class="mt-1 mb-5 pb-1">...</h4>
<%@ include file="navbar.jsp" %>
	<%
	List<Evento> eventi = (List<Evento>) request.getAttribute("eventi");
	
	%>
	<form>
            <div class="container" >
            <div class="row">       
              <div class="col-4">
                 <div "card" style="width: 40rem;">
					<!-- Immagine evento -->
					<% for(Evento evento : eventi){ %>
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
								<%}%>
						</div>
					</div>
				</div>
				</div>
		  <form>
      
         
          
           <div class="col-4">
                         <input type="text" id="form2Example11"
                              placeholder="nome evento" />
                         <br>
                         <br>
                      <div id="list1" class="dropdown-check-list" tabindex="100">
                        <span class="anchor">Città</span>
                       
                        <ul class="items">
                            
                          <li><input type="radio" name="citta" value="Bari"/>BARI</li>
                          <li><input type="radio" name="citta" value="Bologna"/>BOLOGNA</li>
                          <li><input type="radio" name="citta" value="Catania"/>CATANIA</li>
                          <li><input type="radio" name="citta" value="Firenze"/>FIRENZE</li>
                          <li><input type="radio" name="citta" value="Genova"/>GENOVA</li>
                          <li><input type="radio" name="citta" value="Milano"/>MILANO</li>
                          <li><input type="radio" name="citta" value="Napoli"/>NAPOLI</li>
                          <li><input type="radio" name="citta" value="Palermo"/>PALERMO</li>
                          <li><input type="radio" name="citta" value="Roma"/>ROMA</li>
                          <li><input type="radio" name="citta" value="Torino"/>TORINO</li>
                            </div>
                        </ul>
                    
                        <div class="form-outline mb-4">
                          <label class="form-label" for="risultatiData">Da:</label>
                          <input class="form-control" type="date" id="risultatiData" name="dataEvento">
                        </div>
                      <div class="form-outline mb-4">
                          <label class="form-label" for="risultatiData">A:</label>
                          <input class="form-control" type="date" id="risultatiData" name="dataEvento">
                        </div>

                        <br>
                        <br>
                        <div input type="submit">
                          <input type="radio" name="pagamento"/>gratuito </li>
                          <input type="radio" name="pagamento"/>pagamento</li>
                        </div>
                          <br>
                          <br>
                            <div input type="submit">
                            <input type="radio" name="evento" value="Mela" /> Mela
                            <input type="radio" name="evento" value="Pera" /> Pera
                            <input type="radio" name="evento" value="Banana" /> Banana
                           
                            </div>
                        
                       
                        </form>
                            <br>
                            <br>
                           <button type="button" class="btn btn-outline-success">Cerca</button>
                      </div> 
                    </div>
                  </div>
                  </form>
            
      
           </form>
          </section>

    </section>
         <script>
                    var checkList = document.getElementById('list1');
                    checkList.getElementsByClassName('anchor')[0].onclick = function (evt) {
                      if (checkList.classList.contains('visible'))
                        checkList.classList.remove('visible');
                      else
                        checkList.classList.add('visible');
                    }
                  </script>
</body>
</html>
			<!-- Qui inizia La Card -->
			<%
			for (Evento evento : eventi) {
			%>
			
				
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