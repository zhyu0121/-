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
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public loginServlet() {
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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		IUserDao iud = new UserDao();
		if(username.length() != 0 && password.length() != 0){
			User user = iud.findUser(username, password);
			
			if(user != null){
				session.setAttribute("user", user);
				int flag = user.getFlag();
				if(flag==1){
					response.sendRedirect("admin.jsp");
				}else if(flag==0){
					response.sendRedirect("index.jsp");
				}else {
					response.sendRedirect("freeze.jsp");
				}
			}else{
				String message = "没有找到该用户或者密码错误";
				session.setAttribute("message1", message);
				response.sendRedirect("login.jsp");
			}
		}else{
			String message = "用户名和密码不能为空";
			session.setAttribute("message1", message);
			response.sendRedirect("login.jsp");
		}
	}

}
