package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.IGoodsDao;
import com.dao.IUserDao;
import com.dao.impl.GoodsDao;
import com.dao.impl.UserDao;
import com.vo.Goods;
import com.vo.User;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
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
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String pic = request.getParameter("pic");
		String detail = request.getParameter("detail");
		String price = request.getParameter("price");
		String linePrice = request.getParameter("linePrice");
		String brand = request.getParameter("brand");
		String c1 = request.getParameter("c1");
		String c2 = request.getParameter("c2");
		String size1 = request.getParameter("size1");
		String size2 = request.getParameter("size2");
		
		HttpSession session = request.getSession();
		if (name==null||pic==null||detail==null||price==null||linePrice==null||brand==null||c1==null||c2==null||size1==null||size2==null) {
			session.setAttribute("addMess", "参数缺失，无法添加");
			response.sendRedirect("admin.jsp");
		}else {
			detail.replaceAll(" ", "");
			if (detail.contains("，")) {
				detail.replaceAll("，", ",");
			}
			IGoodsDao igd = new GoodsDao();
			Goods goods = new Goods();
			goods.setBrand(brand);
			goods.setCategory1(c1);
			goods.setCategory2(c2);
			goods.setPic(pic);
			goods.setLinePrice(Integer.valueOf(linePrice));
			goods.setPrice(Integer.valueOf(price));
			goods.setSize1(size1);
			goods.setSize2(size2);
			goods.setName(name);
			goods.setDetails(detail);
			igd.addGoods(goods);
			response.sendRedirect("admin.jsp");
		}
	}

}
