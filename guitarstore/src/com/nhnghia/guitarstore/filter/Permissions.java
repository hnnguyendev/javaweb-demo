package com.nhnghia.guitarstore.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class Permissions
 */
@WebFilter(filterName = "/Permissions", urlPatterns = { "/administration", "/deleteGuitar",
		"/deleteOrder", "/insertGuitar", "/order", "/updateGuitar" })
public class Permissions implements Filter {

    /**
     * Default constructor. 
     */
    public Permissions() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		
		if (session != null && session.getAttribute("role")!= null && session.getAttribute("role").equals("admin")) {
			chain.doFilter(request,response); 
		} else {
			RequestDispatcher dispatcher = httpReq.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDenied.jsp");
	        dispatcher.forward(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
