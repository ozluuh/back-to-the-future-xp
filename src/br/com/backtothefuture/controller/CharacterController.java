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

import br.com.backtothefuture.bean.Character;
import br.com.backtothefuture.bean.CharacterEvent;
import br.com.backtothefuture.bean.Event;
import br.com.backtothefuture.bo.CharacterBo;
import br.com.backtothefuture.bo.CharacterEventBo;
import br.com.backtothefuture.bo.EventBo;
import br.com.backtothefuture.connection.ConnectionManager;

/**
 * Servlet implementation class CharacterController
 */
@WebServlet({ "/personagens", "/personagem" })
public class CharacterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static Connection connection;
	private static CharacterBo characterBo;
	private static EventBo eventBo;
	private static CharacterEventBo characterEventBo;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CharacterController() {
		super();

		try {
			connection = ConnectionManager.getInstance().getConnection();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}
		try {
			eventBo = new EventBo(connection);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		try {
			characterBo = new CharacterBo(connection);
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			characterEventBo = new CharacterEventBo(connection);
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
		
		System.out.println("Character: " + src);

		switch (src) {

		case "/personagens":
			launchCharacters(request, response);
			break;
		case "/personagem":
			launchDetailCharacter(request, response);
			break;

		}

	}

	public void launchCharacters(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		List<Character> list = characterBo.listCharacters();
		request.setAttribute("listCharacters", list);

		request.getRequestDispatcher("/WEB-INF/pages/characters.jsp").forward(request, response);
	}

	public void launchDetailCharacter(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Character character = new Character();

		character.setId(Integer.parseInt(request.getParameter("id").trim()));
		character = characterBo.search(character);
		
		List<CharacterEvent> charEventList = characterEventBo.listCharacterEvent(character);
		List<Event> eventChar = eventBo.eventsByCharacter(charEventList);

		request.setAttribute("listCharEvents", eventChar);
		request.setAttribute("character", character);

		request.getRequestDispatcher("/WEB-INF/pages/character.jsp").forward(request, response);
	}
}
