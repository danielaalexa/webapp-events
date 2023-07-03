package it.generationitaly.events.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import it.generationitaly.events.entity.Evento;
import it.generationitaly.events.repository.EventoRepository;
import it.generationitaly.events.repository.impl.EventoRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/servletSearch")
public class ServletSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private EventoRepository eR = new EventoRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("inizia la ricerca");
		/*
		 * if (request.getParameter("searchTag") != "") { getEventoTag(request,
		 * response); return; } else if (request.getParameter("nome") != null) {
		 * getEventoNome(request, response); return; }
		 * 
		 * else if (request.getParameter("citta") != "") { getEventoCitta(request,
		 * response); return; }
		 * 
		 * if (request.getParameter("gratuito") != null) { getEventoGratuito(request,
		 * response); return; }
		 * 
		 * if (request.getParameter("date1") != null && request.getParameter("date2") !=
		 * null) { getEventoDateBetween(request, response); return; }
		 */
		int id = Integer.parseInt(request.getParameter("searchTag"));
		System.out.println(id);

		String citta = request.getParameter("citta");
		System.out.println(citta);

		/*
		 * SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy",
		 * Locale.ENGLISH); String data1AsString = "null"; Calendar calendar =
		 * Calendar.getInstance(); calendar.set(2023, Calendar.JANUARY, 1);
		 * 
		 * data1AsString = request.getParameter(data1AsString != null ? data1AsString :
		 * new String("01-01-2023")); Date data1 = calendar.getTime(); try { data1 =
		 * formatter.parse(data1AsString); } catch (ParseException e) { e.getMessage();
		 * } catch (Exception e) { System.out.println(data1AsString); }
		 * 
		 * calendar.set(2023, Calendar.DECEMBER, 12); String data2AsString = "null";
		 * data2AsString = request.getParameter(data2AsString != null ? data2AsString :
		 * new String("30-12-2023")); Date data2 = calendar.getTime(); try { data2 =
		 * formatter.parse(data2AsString); } catch (ParseException e) { e.getMessage();
		 * 
		 * } catch (Exception e) { System.out.println(data2AsString); }
		 */
		List<Evento> eventi = eR.findEventi1(id, citta);
		for (Evento evento : eventi) {
			System.out.println(evento);
		}
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);
	}

	private void getEventoTag(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("searchTag"));
		List<Evento> eventi = eR.findByTagId(id);
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);

	}

	private void getEventoNome(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nome = request.getParameter("nome");
		List<Evento> eventi = eR.findByNome(nome);
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);

	}

	private void getEventoCitta(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String citta = request.getParameter("citta");
		List<Evento> eventi = eR.findByCitta(citta);
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);
	}

	private void getEventoGratuito(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean gratuito = Boolean.parseBoolean(request.getParameter("gratuito"));
		List<Evento> eventi = eR.findByGratuito(gratuito);
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);
	}

	private void getEventoDateBetween(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH);
		String data1AsString = request.getParameter("date1");
		Date data1 = null;
		try {
			data1 = formatter.parse(data1AsString);
		} catch (ParseException e) {
			e.getMessage();
		}

		String data2AsString = request.getParameter("date2");
		Date data2 = null;
		try {
			data2 = formatter.parse(data2AsString);
		} catch (ParseException e) {
			e.getMessage();
		}

		List<Evento> eventi = eR.findByDataBetween(data1, data2);
		request.setAttribute("eventi", eventi);
		request.getRequestDispatcher("risultati.jsp").forward(request, response);
	}

	/*
	 * private void getEventoDate(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { SimpleDateFormat formatter =
	 * new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH);
	 * 
	 * String data1AsString = request.getParameter("data1"); String data2AsString =
	 * request.getParameter("data2");
	 * 
	 * if (data1AsString != null && data2AsString == null) { Date data1 = null; try
	 * { data1 = formatter.parse(data1AsString); } catch (ParseException e) {
	 * e.getMessage(); } List<Evento> eventi = eR.findByData(data1);
	 * request.setAttribute("eventi", eventi);
	 * request.getRequestDispatcher("risultati.jsp").forward(request, response); }
	 * if (data1AsString == null && data2AsString != null) { Date data2 = null; try
	 * { data2 = formatter.parse(data2AsString); } catch (ParseException e) {
	 * e.getMessage(); } List<Evento> eventi = eR.findByData(data2);
	 * request.setAttribute("eventi", eventi);
	 * request.getRequestDispatcher("risultati.jsp").forward(request, response);
	 * 
	 * }
	 * 
	 * }
	 * 
	 */
}
