package it.generationitaly.events.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.generationitaly.events.entity.Evento;
import it.generationitaly.events.entity.Prenotazione;
import it.generationitaly.events.entity.User;
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
		HttpSession session = request.getSession(); // request.getSession(false);
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		if (user == null) {
			response.sendRedirect("login.jsp");
			return;
		} else {
			List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
			int id = Integer.parseInt(request.getParameter("id"));
			Evento evento = eventoRepository.findById(id);
			for (Prenotazione prenotazione : prenotazioni) {
				if(prenotazione.getEvento() == evento) {
					
				}
			}
			Prenotazione prenotazione = new Prenotazione();
			prenotazione.setUser(user);
			prenotazione.setEvento(evento);
			prenotazioneRepository.save(prenotazione);
			prenotazioni.add(prenotazione);
			user.setPrenotazioni(prenotazioni);
			session.setAttribute("prenotazioni", prenotazioni);
			request.setAttribute("prenotazioni", prenotazioni);
			request.getRequestDispatcher("carrello.jsp").forward(request, response);
			return;
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idPrenotazione = Integer.parseInt(request.getParameter("idPrenotazione"));
		int quantita = Integer.parseInt(request.getParameter("quantita"));
		
		HttpSession session = request.getSession();
		List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
		for (Prenotazione prenotazione : prenotazioni) {
			if (prenotazione.getId() == idPrenotazione) {
				prenotazione.setQuantita(quantita);
				prenotazioneRepository.update(prenotazione);
				request.setAttribute("prenotazioni", prenotazioni);
				request.getRequestDispatcher("carrello.jsp").forward(request, response);
				return;
			}
		}
		
		/*
		  HttpSession session = request.getSession();
	      List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
	      prenotazioni.removeIf(prenotazione -> prenotazione.getId() == id);
	      request.setAttribute("prenotazioni", prenotazioni);
	      request.getRequestDispatcher("carrello.jsp").forward(request, response);
	     */ 
		// getBuy(request, response);

	}
	
	protected void getQuantita(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idPrenotazione = Integer.parseInt(request.getParameter("idPrenotazione"));
		Prenotazione prenotazione = prenotazioneRepository.findById(idPrenotazione);
		int quantita = Integer.parseInt(request.getParameter("quantita"));
		prenotazione.setQuantita(quantita);
		prenotazioneRepository.update(prenotazione);
		response.sendRedirect("carrello");
		
		request.getRequestDispatcher("carrello.jsp").forward(request, response);
	}

	private void getBuy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("").forward(request, response);
	}

}
