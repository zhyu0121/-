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
import com.enums.OrderStatusEnum;
import com.vo.Goods;
import com.vo.Order;
import com.vo.User;

/**
 * Servlet implementation class pay
 */
@WebServlet("/pay")
public class pay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pay() {
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

		String orderId = request.getParameter("orderId");
		IOrderDao iod = new OrderDao();
		Order order = iod.selectOneOrderById(Integer.valueOf(orderId));
		String ooo = request.getParameter("ooo");
		order.setStatus(OrderStatusEnum.O101.getCode());
		if (null!=ooo) {
			order.setStatus(OrderStatusEnum.O103.getCode());
		}
		int i = iod.updateOrder(order);
		response.sendRedirect("orderList.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
