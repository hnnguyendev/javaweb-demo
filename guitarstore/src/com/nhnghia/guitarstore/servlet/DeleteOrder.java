package com.nhnghia.guitarstore.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhnghia.guitarstore.dao.OrderDAO;

/**
 * Servlet implementation class DeleteOrder
 */
@WebServlet("/deleteOrder")
public class DeleteOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// id get từ <a href="deleteOrder?id=${order.orderID}">Delete</a> ở trang order.jsp
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		OrderDAO orderDAO = new OrderDAO();
		orderDAO.deleteOrder(id);
		
		response.sendRedirect(request.getContextPath() + "/order");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
