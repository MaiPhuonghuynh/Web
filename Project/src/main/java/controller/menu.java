package controller;

import java.io.IOException;
import java.util.List;

import dao.DAOFood;
import entity.Food;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class menu
 */
@WebServlet("/menu")
public class menu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Food> ls;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public menu() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		DAOFood dao = new DAOFood();

		String sort = request.getParameter("sort") == null ? "0" : request.getParameter("sort");
		request.setAttribute("sort", sort);
		switch (sort) {
		case "0":// mac dinh
			ls = dao.getAll();
			break;
		case "1":// a-z
			ls = dao.sortByName(true);
			break;
		case "2":// z-a
			ls = dao.sortByName(false);
			break;
		case "3":// gia tang
			ls = dao.sortByPrice(true);
			break;
		case "4":// gia giam
			ls = dao.sortByPrice(false);
			break;
		}

		request.setAttribute("ls", ls);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/monngonmoingay.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
