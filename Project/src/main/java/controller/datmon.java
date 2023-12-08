package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import entity.Food;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class addCart
 */
@WebServlet("/datmon")
public class datmon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public datmon() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Food> lsGioHang = (List<Food>) session.getAttribute("GioHang");
		if (lsGioHang == null) {
			lsGioHang = new ArrayList<Food>();
		}
		Food food = (Food) request.getSession().getAttribute("ssFood");
		lsGioHang.add(food);
		System.out.println(lsGioHang);
		session.setAttribute("GioHang", lsGioHang);
		request.getServletContext().getRequestDispatcher("/menu").forward(request, response);
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
