package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Type;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.model.*;
/**
 * Servlet implementation class CartController
 */

@WebServlet("/Cart")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession sessionObj=request.getSession();
		com.google.gson.Gson gsonOb=new Gson();

		Type collectionType = new TypeToken<List<Product>>(){}.getType();	

		String s=request.getParameter("paramsMap");
		String removeItem=request.getParameter("remove");
		if(removeItem!=null)
		{
			List<Product> carts=(List<Product>) sessionObj.getAttribute("cart");
			for(int index=0;index<carts.size();index++)
			{
				if(carts.get(index).getProductName().equals(removeItem))
				{
					carts.remove(index);
					sessionObj.setAttribute("cart", carts);
					response.sendRedirect("/AdJava/ViewCart?id=");
				}
			}
			
		}
		if(s!=null)
		{
			List<Product> cartObj=gsonOb.fromJson(s, collectionType);
			if(sessionObj.getAttribute("cart")!=null)
			{
				List<Product> carts=(List<Product>) sessionObj.getAttribute("cart");

				carts.add(cartObj.get(0));
				sessionObj.setAttribute("cart", carts);

			}
			else
			{
				sessionObj.setAttribute("cart", cartObj);
			}

			PrintWriter pw=response.getWriter();
			pw.println(s);
			pw.close();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
