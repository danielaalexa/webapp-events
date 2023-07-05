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
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete-event")
public class DeleteEventServlet extends HttpServlet {
	
	private PrenotazioneRepository prenotazioneRepository = new PrenotazioneRepositoryImpl();
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        prenotazioneRepository.deleteById(id);

        HttpSession session = request.getSession();
        List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
        prenotazioni.removeIf(prenotazione -> prenotazione.getId() == id);
        request.setAttribute("prenotazioni", prenotazioni);
        RequestDispatcher dispatcher = request.getRequestDispatcher("carrello.jsp");
        dispatcher.forward(request, response);
        }

}