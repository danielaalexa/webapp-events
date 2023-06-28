package it.generationitaly.events.controller;

import java.io.IOException;

import it.generationitaly.events.entity.User;
import it.generationitaly.events.repository.UserRepository;
import it.generationitaly.events.repository.impl.UserRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserRepository uR = new UserRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		User user = uR.findByUsername(username);
		if (user != null && user.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", user.getId());
			session.setAttribute("username", user.getUsername());
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("login.jsp?credenzialiErrate");
		}

	}

}
