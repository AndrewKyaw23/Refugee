package com.java.plyd.ui;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.java.plyd.service.IOrphansService;
import com.java.plyd.service.Orphans;
import com.java.plyd.service.SpringBeanFactory;

/**
 * Servlet implementation class OrphansController
 */
@WebServlet("/OrphansController")
public class OrphansController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrphansController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.print("hello");
		IOrphansService us = (IOrphansService) SpringBeanFactory.getBean("OrphansService");
		String page = null;
		String param = request.getParameter("page");
		
		
		System.out.println(param + "page");
		if (param.equals("Cancel")) 
		{
			page = "/presentation/Orphans.jsp";
		}
		else if (param.equals("Submit"))
		{
			Orphans u = new Orphans();
			   
			u.setName(request.getParameter("FoundlingName"));
			u.setNrc(request.getParameter("Nrc"));
			u.setBOD(request.getParameter("BOD"));
			u.setAge(request.getParameter("Age"));
			u.setFatherName(request.getParameter("FatherName"));
			u.setGender(request.getParameter("optradio"));
			
			u.setCampName(request.getParameter("CampName"));
			u.setArrivalDate(request.getParameter("ArrivalDate"));
			u.setOriginalVillage(request.getParameter("OriginalVillage"));
			u.setRoomNo(request.getParameter("RoomNo"));
			u.setDepartureDate(request.getParameter("DepartureDate"));
			u.setRemark(request.getParameter("Remark"));
			
		    us.insert(u);
		    System.out.println("Insert");
			page = "/presentation/Orphans.jsp";
			
		}
		else if (param.equals("Edit"))
		{
			Orphans u = new Orphans();
			u.setOrphans_id(Integer.parseInt(request.getParameter("idOrphans_id")));
			
			u.setName(request.getParameter("idFoundlingName"));
			u.setNrc(request.getParameter("idNrc"));
			u.setBOD(request.getParameter("idBOD"));
			u.setAge(request.getParameter("idAge"));
			u.setFatherName(request.getParameter("idFatherName"));
			u.setGender(request.getParameter("idoptradio"));
			
			u.setCampName(request.getParameter("idCampName"));
			u.setArrivalDate(request.getParameter("idArrivalDate"));
			u.setOriginalVillage(request.getParameter("idOriginalVillage"));
			u.setRoomNo(request.getParameter("idRoomNo"));
			u.setDepartureDate(request.getParameter("idDepartureDate"));
			u.setRemark(request.getParameter("idRemark"));
			us.update(u);
			page = "/presentation/Orphansview.jsp";
		}
		else if (param.equals("remove")) 
		{
			
			int Orphans_id = Integer.parseInt(request.getParameter("Orphans_id"));
			us.delete(Orphans_id);
			page = "/presentation/Orphansview.jsp";
		}
		

		
		
		getServletContext().getRequestDispatcher(page).forward(request,response);
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
