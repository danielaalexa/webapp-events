package it.generationitaly.events.controller;

import java.io.IOException;
import java.util.List;

import it.generationitaly.events.entity.Prenotazione;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete-event")
public class DeleteEventServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession session = request.getSession();
        int id = Integer.parseInt(request.getParameter("eventoId"));

        List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");

        Prenotazione prenotazioneToRemove = null;
        for (Prenotazione prenotazione : prenotazioni) {
            if (prenotazione.getEvento().getId() == id) {
                prenotazioneToRemove = prenotazione;
                break;
            }
        }
        if (prenotazioneToRemove != null) {
            prenotazioni.remove(prenotazioneToRemove);
        }

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("carrello.jsp");
        requestDispatcher.forward(request, response);
    }
}