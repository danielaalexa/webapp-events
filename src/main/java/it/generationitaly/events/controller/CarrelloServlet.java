package it.generationitaly.events.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.events.entity.Evento;
import it.generationitaly.events.entity.Prenotazione;
import it.generationitaly.events.repository.EventoRepository;
import it.generationitaly.events.repository.PrenotazioneRepository;
import it.generationitaly.events.repository.impl.EventoRepositoryImpl;
import it.generationitaly.events.repository.impl.PrenotazioneRepositoryImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/carrello")
public class CarrelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EventoRepository eventoRepository = new EventoRepositoryImpl();
	private PrenotazioneRepository prenotazioneRepository = new PrenotazioneRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false); // request.getSession(false);
		if (session == null) {
			session = request.getSession();
			response.sendRedirect("login");
		} else {
			List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
			prenotazioni = new ArrayList<Prenotazione>();
			int id = Integer.parseInt(request.getParameter("id"));
			Evento evento = eventoRepository.findById(id);
			Prenotazione prenotazione = new Prenotazione();
			prenotazione.setEvento(evento);
			prenotazioneRepository.save(prenotazione);
			prenotazioni.add(prenotazione);
			session.setAttribute("prenotazioni", prenotazioni);
		}
		request.getRequestDispatcher("carrello.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getBuy(request, response);
		
		getRemove(request, response);
	}
	

	private void getBuy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
	}

	private void getRemove(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
		int id = Integer.parseInt(request.getParameter("id"));
		Prenotazione prenotazione = prenotazioneRepository.findById(id);
		prenotazioni.remove(prenotazione);
		session.setAttribute("prenotazioni", prenotazioni);
		response.sendRedirect("carrello");
		
	}
}
