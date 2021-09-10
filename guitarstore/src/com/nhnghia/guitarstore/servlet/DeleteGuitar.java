package com.nhnghia.guitarstore.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhnghia.guitarstore.dao.GuitarDAO;

/**
 * Servlet implementation class DeleteGuitar
 */
@WebServlet("/deleteGuitar")
public class DeleteGuitar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGuitar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id get từ <a href="deleteGuitar?id=${guitar.guitarID}">Delete</a> ở trang administration.jsp
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		GuitarDAO guitarDAO = new GuitarDAO();
		guitarDAO.deleteGuitar(id);
		
		response.sendRedirect(request.getContextPath() + "/administration");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
