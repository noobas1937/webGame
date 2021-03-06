package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Config.config;
import com.model.Tank;
import com.model.User;
import com.model.room;
import com.util.JdbcUtil;

/**
 * Servlet implementation class joinG
 */
@WebServlet("/joinG")
public class joinG extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinG() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
		
				String name = request.getParameter("name");
				String RoomName = request.getParameter("RoomName");
				ArrayList<room> rl = config.rl;
				ArrayList<Tank> tl = null;
				for(room r:rl){
					if(r.getrName().equals(RoomName)){
						tl = r.getTl();
					}
					
				}
				
				Tank t = new Tank();
				t.setName(name);
				tl.add(t);
				request.setAttribute("RoomName", RoomName);
				request.setAttribute("name", name);
				request.getRequestDispatcher("main.jsp").forward(request, response);
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
