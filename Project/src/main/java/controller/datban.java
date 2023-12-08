package controller;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class datban
 */
@WebServlet("/datban")
public class datban extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public datban() {
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

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		boolean checkError = false;
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phoneNumber");
		String date = request.getParameter("date");
		String quantity = request.getParameter("quantity");
		String time = request.getParameter("time");

		try {
			Pattern phonePt = Pattern.compile("\\d{10}");
			Matcher phoneMc = phonePt.matcher(phone);
			if (!phoneMc.matches() || phone.charAt(0) != '0') {
				checkError = true;
				request.setAttribute("e_phoneNumber", "Số điện thoại nhập không hợp lệ");
			} else
				request.setAttribute("phone", phone);

			int quantityInt = Integer.parseInt(quantity);
			if (quantityInt <= 0) {
				checkError = true;
				request.setAttribute("e_quantity", "Số người đặt bàn không hợp lệ (số người > 0)");
			} else
				request.setAttribute("quantity", quantity);
		} catch (Exception e) {
			checkError = true;
		}

		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("date", date);
		request.setAttribute("time", time);

		request.setAttribute("success", !checkError);
		request.getServletContext().getRequestDispatcher("/datban.jsp").forward(request, response);
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
