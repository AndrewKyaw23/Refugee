package com.java.plyd.ui;





import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.java.plyd.service.IVictimService;

import com.java.plyd.service.SpringBeanFactory;

import com.java.plyd.service.Victim;

/**
 * Servlet implementation class VictimController
 */
@WebServlet("/VictimController")
public class VictimController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VictimController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
    	// TODO Auto-generated method stub
		System.out.print("Hello");
		IVictimService us = (IVictimService) SpringBeanFactory.getBean("VictimService");
		String page = null;
		String param = request.getParameter("page");
		
		System.out.println(param + "page");
		if (param.equals("Cancel")) 
		{
			page = "/presentation/Victim.jsp";
		}
		else if (param.equals("Submit"))
		{
			Victim u = new Victim();
   
			u.setHeader_id(Integer.parseInt(request.getParameter("victimcombo")));
			u.setName(request.getParameter("FamilyHeaderName"));
			u.setName(request.getParameter("txtName"));
			u.setNRC(request.getParameter("txtNrc"));
			u.setBOD(request.getParameter("txtBOD"));
			u.setAge(request.getParameter("txtAge"));
			u.setFather_Name(request.getParameter("txtFName"));
			
			u.setAddress(request.getParameter("txtAddress"));
			u.setArrival_Date(request.getParameter("txtAdate"));
			u.setArrival_Time(request.getParameter("txtAtime"));
			u.setGrade(request.getParameter("txtGrade"));
			u.setCamp_Name(request.getParameter("txtCName"));
			u.setGender(request.getParameter("optradio"));
			u.setReligion(request.getParameter("txtReligion"));
			u.setRemark(request.getParameter("txtRemark"));
		    us.insert(u);
		    System.out.println("Insert");
			page = "/presentation/Victim.jsp";
			
		}
		else if(param.equals("Edit")){
			Victim u = new Victim();
			
			u.setHeader_id(Integer.parseInt(request.getParameter("victimcombo1")));
			u.setVictim_id(Integer.parseInt(request.getParameter("Victimid")));
			u.setName(request.getParameter("VName"));
			u.setNRC(request.getParameter("VNrc"));
			u.setBOD(request.getParameter("VBod"));
			u.setAge(request.getParameter("VAge"));
			u.setFather_Name(request.getParameter("VFatherName"));
			u.setAddress(request.getParameter("VAddress"));
			
			u.setArrival_Date(request.getParameter("VArrivalDate"));
			u.setArrival_Time(request.getParameter("VArrivalTime"));
			u.setGrade(request.getParameter("VGrade"));
			u.setCamp_Name(request.getParameter("VCampName"));
			u.setGender(request.getParameter("idoptradio"));
			u.setReligion(request.getParameter("VReligion"));
			
			u.setRemark(request.getParameter("VRemark"));
		    us.update(u);
			
			
				
			

//				List<TrainingSchool> trainList = trainingschoolService.selectAll();
	//
//				request.setAttribute("trainList", trainList);
				page = "/presentation/Victimview.jsp";
		}
		
		else if (param.equals("remove"))
		{
			int Victim_id = Integer.parseInt(request.getParameter("Victim_id"));
			us.delete(Victim_id);
			page = "/presentation/Victimview.jsp";
		}
		else if(param.equals("View"))
		{
			Victim u = new Victim();
			u.setName(request.getParameter("txtName"));
			u.setAge(request.getParameter("txtAge"));
			us.insert(u);
			 System.out.println("View");
				page = "/presentation/Vv.jsp";
			
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
