package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.IUserDao;
import com.dao.impl.UserDao;
import com.vo.User;

/**
 * Servlet implementation class unfreezeServlet
 */
@WebServlet("/unfreezeServlet")
public class unfreezeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public unfreezeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		User user = (User)session.getAttribute("user");
		
		IUserDao iud = new UserDao();
		if(null != user){
			user.setFlag(3);
			int updateUser = iud.updateUser(user);
			if (1 == updateUser) {
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("freeze.jsp");
			}
		}
	}

}
