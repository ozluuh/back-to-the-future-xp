package br.com.backtothefuture.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RoutesController
 */
@WebServlet({ "/routes/*" })
public class RoutesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoutesController() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String src = request.getRequestURI().replaceAll("/BackToTheFutureXP/routes", "");
		String url = "";
		
		System.out.println("Routes: " + src);
		
		switch(src) {
		case "/personagens":
			url = "/personagens";
			break;
		case "/eventos":
			url = "/eventos";
			break;
		case "/linhatemporal":
			url = "/pages/timeline.jsp";
			break;
		case "/sobre":
			url = "/pages/about.jsp";
			break;
		default:
			url = "/index.jsp";
			break;
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
