package it.generationitaly.events.controller;

import java.io.IOException;
import java.util.List;

import it.generationitaly.events.entity.Prenotazione;
import it.generationitaly.events.repository.PrenotazioneRepository;
import it.generationitaly.events.repository.impl.PrenotazioneRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/delete-event")
public class DeleteEventServlet extends HttpServlet {
	
	private PrenotazioneRepository prenotazioneRepository = new PrenotazioneRepositoryImpl();
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    	/*
		int id = Integer.parseInt(request.getParameter("id"));
		prenotazioneRepository.deleteById(id);
		response.sendRedirect("carrello.jsp");
		*/
    	
    	List<Prenotazione> prenotazioni = prenotazioneRepository.findAll();
    	request.setAttribute("prenotazioni", prenotazioni);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("carrello.jsp");
		requestDispatcher.forward(request, response);
    	
        }
        
    	
    	
  
}