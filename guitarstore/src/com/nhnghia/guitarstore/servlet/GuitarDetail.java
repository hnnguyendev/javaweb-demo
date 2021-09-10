package com.nhnghia.guitarstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhnghia.guitarstore.bo.Guitar;
import com.nhnghia.guitarstore.dao.GuitarDAO;
import com.nhnghia.guitarstore.dao.OrderDAO;

/**
 * Servlet implementation class GuitarDetail
 */
@WebServlet("/guitarDetail")
public class GuitarDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuitarDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id get từ <a href="guitarDetail?id=${guitar.guitar_id}"> ở trang home.jsp
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		GuitarDAO guitarDAO = new GuitarDAO();
		Guitar guitar = guitarDAO.findGuitarByID(id);
		request.setAttribute("guitarDetail", guitar);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/guitarDetail.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String guitar_idStr = (String) request.getParameter("guitarID");
		int guitarID = Integer.parseInt(guitar_idStr);
		int userID = (int) request.getSession().getAttribute("userID");
		
		
		OrderDAO orderDAO = new OrderDAO();
		orderDAO.insertOrder(guitarID, userID);
		
		response.sendRedirect(request.getContextPath() + "/userOrder");
	}

}
