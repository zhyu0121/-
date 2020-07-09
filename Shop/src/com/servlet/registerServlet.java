package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String isHas = request.getParameter("isHas");
		
		IUserDao iud = new UserDao();
		if ("0".equals(isHas)) {
			User user = iud.findUser(username, "0");
			if(user != null){
				out.println(1);
			}
		}else {
			String password = request.getParameter("inputPassword");
			String usercaption = request.getParameter("usercaption");
			String phone = request.getParameter("phone");
			String sex = request.getParameter("sex");
			
			User user = new User();
			user.setAccount(username);
			user.setPassword(password);
			user.setName(usercaption);
			user.setPhone(phone);
			user.setSex(sex);
			int addUser = iud.addUser(user);
			
			if (1==addUser) {
				out.println(2);

			}
		}
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
