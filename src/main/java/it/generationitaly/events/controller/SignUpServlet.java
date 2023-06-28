package it.generationitaly.events.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import it.generationitaly.events.entity.MetodoPagamento;
import it.generationitaly.events.entity.User;
import it.generationitaly.events.repository.MetodoPagamentoRepository;
import it.generationitaly.events.repository.UserRepository;
import it.generationitaly.events.repository.impl.MetodoPagamentoRepositoryImpl;
import it.generationitaly.events.repository.impl.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/sign-up")
public class SignUpServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UserRepository userRepository = new UserRepositoryImpl();
	private MetodoPagamentoRepository metodoPagamentoRepository = new MetodoPagamentoRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String sesso = request.getParameter("sesso");

		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy", Locale.ENGLISH);
		String dataNascitaAsString = request.getParameter("dataNascita");
		Date dataNascita = null;
		try {
			dataNascita = formatter.parse(dataNascitaAsString);
		} catch (ParseException e) {
			e.getMessage();
		}
        int metodoPagamentoId = Integer.parseInt(request.getParameter("metodoPagamentoId"));
		MetodoPagamento metodoPagamento = metodoPagamentoRepository.findById(metodoPagamentoId);

		User user = new User();
		user.setNome(nome);
		user.setCognome(cognome);
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setSesso(sesso);
		user.setDataNascita(dataNascita);
        user.setMetodoPagamento(metodoPagamento);
        
		userRepository.save(user);
		response.sendRedirect("home.jsp");

	}

}
