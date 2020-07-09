package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.IGoodsDao;
import com.dao.IOrderDao;
import com.dao.impl.GoodsDao;
import com.dao.impl.OrderDao;
import com.enums.OrderCodeOrlogisticsCodeEnum;
import com.vo.Goods;
import com.vo.Order;
import com.vo.User;

/**
 * Servlet implementation class addCart
 */
@WebServlet("/addCart")
public class addCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCart() {
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

		String gid = request.getParameter("gid");
		String count = request.getParameter("count");
		
		User user = (User) request.getSession().getAttribute("user");
		
		IGoodsDao igd = new GoodsDao();
		Goods goods = igd.selectOneGoods(Integer.valueOf(gid));
		
		IOrderDao iod = new OrderDao();
		Order order = new Order();
		order.setOrderCode(OrderCodeOrlogisticsCodeEnum.OC.getCode()+System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		order.setCreateTime(sdf.format(new Date()));
		order.setGname(goods.getName());
		order.setGprice(goods.getPrice());
		order.setGid(goods.getId());
		order.setUid(user.getId());
		order.setSum(Integer.valueOf(count));
		int i = iod.addOrder(order);
		out.println(i);
		out.flush();
		out.close();
	}

}
