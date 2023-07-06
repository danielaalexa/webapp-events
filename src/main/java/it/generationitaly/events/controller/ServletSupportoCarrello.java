package it.generationitaly.events.controller;

import java.io.IOException;
import java.util.List;

import it.generationitaly.events.entity.Prenotazione;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/servletSupportoCarrello")
public class ServletSupportoCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	

   	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   		System.out.println("siamo nella servlet supporto");
   		HttpSession session = request.getSession();	
   		String eventoIdASString = request.getParameter("eventoId");
   		List<Prenotazione> prenotazioni = (List<Prenotazione>) session.getAttribute("prenotazioni");
   		
   			if(eventoIdASString == null) {
   				request.setAttribute("prenotazioni", prenotazioni);
   	   			request.getRequestDispatcher("carrello.jsp").forward(request, response);
   	   		}else {
   	   			request.setAttribute("eventoId", eventoIdASString);
	   			request.getRequestDispatcher("carrello").forward(request, response);
   	   		}		 		
   		
	}
   	
}
