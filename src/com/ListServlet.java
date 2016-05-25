package com;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */

public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("***********************************");
		String userName = request.getParameter("userName");
		
		if(userName!=null)
		{
			String id = request.getParameter("id");
			System.out.println(">>>>>"+id);
		}
		else
		{
		Login login1=new Login();
		Login login2=new Login();
		login1.setPassword("abc");login1.setUserName("Shiv");
		login2.setPassword("RTY");login2.setUserName("Meow");
		List<Login> loginList=new ArrayList<Login>();
		loginList.add(login1);
		loginList.add(login2);
		request.setAttribute("loginList", loginList);
		}
		RequestDispatcher rd=request.getRequestDispatcher("/list.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println();
		doGet(request, response);
	}

}
