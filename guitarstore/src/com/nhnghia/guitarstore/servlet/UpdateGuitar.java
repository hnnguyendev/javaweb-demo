package com.nhnghia.guitarstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nhnghia.guitarstore.bo.Guitar;
import com.nhnghia.guitarstore.dao.GuitarDAO;
import com.nhnghia.guitarstore.utils.FileUpdateUtil;

/**
 * Servlet implementation class UpdateGuitar
 */
@WebServlet("/updateGuitar")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 10,
		maxFileSize = 1024 * 1024 * 50,
		maxRequestSize = 1024 * 1024 * 100
)
public class UpdateGuitar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGuitar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = (String) request.getParameter("id");
		int id = Integer.parseInt(idStr);
		GuitarDAO guitarDAO = new GuitarDAO();
		Guitar guitar = guitarDAO.findGuitarByID(id);
		request.setAttribute("updateGuitar", guitar);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/updateGuitar.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String idStr = (String) request.getParameter("guitarID");
		int id = Integer.parseInt(idStr);
		String name = (String) request.getParameter("name");
		String type = (String) request.getParameter("type");
		String material = (String) request.getParameter("material");
		String brand = (String) request.getParameter("brand");
		String description = (String) request.getParameter("description");
		String priceStr = (String) request.getParameter("price");
		int price = Integer.parseInt(priceStr);
		String quantityStr = (String) request.getParameter("quantity");
		int quantity = Integer.parseInt(quantityStr);
		String imagePath = FileUpdateUtil.saveImage(request);
		GuitarDAO guitarDAO = new GuitarDAO();
		guitarDAO.updateGuitar(id, name, type, material, brand, description, price, quantity, imagePath);
		
		response.sendRedirect(request.getContextPath() + "/administration");
	}

}
