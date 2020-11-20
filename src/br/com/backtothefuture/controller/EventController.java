package br.com.backtothefuture.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.bo.CharacterBo;
import br.com.backtothefuture.bo.CharacterEventBo;
import br.com.backtothefuture.bo.EventBo;
import br.com.backtothefuture.connection.ConnectionManager;

/**
 * Servlet implementation class EventController
 */
@WebServlet({ "/eventos" })
public class EventController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection connection;
	CharacterBo characterBo;
	CharacterEventBo characterEventBo;
	EventBo eventBo;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventController() {
		super();

		try {
			connection = ConnectionManager.getInstance().getConnection();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}

		try {
			characterBo = new CharacterBo(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			characterEventBo = new CharacterEventBo(connection);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		
		try {
			eventBo = new EventBo(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String src = request.getRequestURI().replaceAll("/BackToTheFutureXP", "");
		
		System.out.println("Events: " + src);

		switch (src) {
			case "/eventos":
				events(request, response);
				break;
			default:
				request.getRequestDispatcher("/index.jsp").forward(request, response);
				break;
		}
	}

	protected void events(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Event event = new Event();
		String year = request.getParameter("period").trim();
		event.setTemporalPosition(year);
		
		List<Event> allEventsByPeriod = eventBo.eventByPeriod(event);

		request.setAttribute("listEvents", allEventsByPeriod);
		request.setAttribute("year", year);

		request.getRequestDispatcher("/WEB-INF/pages/events.jsp").forward(request, response);

	}
}
