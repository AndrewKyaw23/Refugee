package com.java.plyd.ui;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.plyd.service.Header;

import com.java.plyd.service.IHeaderService;
import com.java.plyd.service.IOrphansService;
import com.java.plyd.service.IVictimService;
import com.java.plyd.service.Orphans;
import com.java.plyd.service.SpringBeanFactory;
import com.java.plyd.service.Victim;







/**
 * Servlet implementation class HeaderController
 */
@WebServlet("/HeaderController")
public class HeaderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HeaderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("Hello");
		IHeaderService us = (IHeaderService) SpringBeanFactory.getBean("HeaderService");
		IOrphansService us1 = (IOrphansService) SpringBeanFactory.getBean("OrphansService");
		IVictimService us2 = (IVictimService) SpringBeanFactory.getBean("VictimService");
		String page = null;
		String param = request.getParameter("page");
		
		
		System.out.println(param + "page");
		if (param.equals("Cancel")) 
		{
			page = "/presentation/Header.jsp";
		}
		else if (param.equals("Submit"))
		{
			Header u = new Header();
			   
			u.setFamilyHeaderName(request.getParameter("FamilyHeaderName"));
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
			page = "/presentation/Header.jsp";
			
		}
		else if (param.equals("Edit")) {
			Header u = new Header();
			u.setHeader_id(Integer.parseInt(request.getParameter("idHeader_id")));
			
			u.setFamilyHeaderName(request.getParameter("idFamilyHeaderName"));
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
			page = "/presentation/Headerview.jsp";
		}
		else if (param.equals("remove")) 
		{
			
			int header_id = Integer.parseInt(request.getParameter("Header_id"));
			us.delete(header_id);
			page = "/presentation/Headerview.jsp";
		}
		

		else if(param.equals("view1"))
		{
			System.out.println("this is header view ");
			
			int countvm=0;
			int countvf=0;
			
			int count0=0;
			int count00=0;
			
			int count=0;
			int count1=0;
			
			int count2=0;
			int count3=0;
			
			int count4=0;
			int count5=0;
			
			int count6=0;
			int count7=0;
			
			int count8=0;
			int count9=0;
			
			//Header
			List<Header> headerlist=us.selectAll();
			for(Header he:headerlist)
			{
                int age=Integer.parseInt(he.getAge());
				
				if(age>=0 && (he.getGender()).equals("Male") )
				{
					++countvm;
					
				}
				if(age>=0 &&  (he.getGender()).equals("Female") )
				{
					++countvf;
					
				}
				
				
				
				if(age>=0 && age<1 && (he.getGender()).equals("Male") )
				{
					++count0;
					
				}
				if(age>=0 && age<1 && (he.getGender()).equals("Female") )
				{
					++count00;
					
				}
				
				if(age>=1 && age<=5 && (he.getGender()).equals("Male") )
				{
					++count;
					
				}
				if(age>=1 && age<=5 && (he.getGender()).equals("Female") )
				{
					++count1;
					
				}
				
				if(age>=6 && age<=17 && (he.getGender()).equals("Male") )
				{
					++count2;
					
				}
				if(age>=6 && age<=17 && (he.getGender()).equals("Female") )
				{
					++count3;
					
				}
				
				if(age>=18 && age<=49 && (he.getGender()).equals("Male") )
				{
					++count4;
					
				}
				if(age>=18 && age<=49 && (he.getGender()).equals("Female") )
				{
					++count5;
					
				}
				if(age>=50 && age<=80 && (he.getGender()).equals("Male"))
					
				{
				++count6;
				}
				if(age>=50 && age<=80 && (he.getGender()).equals("Female"))
					
				{
				++count7;
				}
                if(age>80 && (he.getGender()).equals("Male"))
					
				{
				++count8;
				}
				if(age>80 && (he.getGender()).equals("Female"))
					
				{
				++count9;
				}
				
			}
			
			
			/*System.out.println("HCount 1 to 5 Male "+count);
			System.out.println("HCount 1 to 5 Female"+count1);
			System.out.println("HCount 6 to 17 Male "+count2);
			System.out.println("HCount 6 to 17 Female"+count3);
			System.out.println("HCount 18 to 49 Male "+count4);
			System.out.println("HCount 18 to 49 Female"+count5);
			System.out.println("HCount 50 to 80 Male "+count6);
			System.out.println("HCount 50 to 80 Female"+count7);*/
			
			//Orphans
			List<Orphans> Orphanslist=us1.selectAll();
			for(Orphans op:Orphanslist)
			{
				int age=Integer.parseInt(op.getAge());
				
				if(age>=0 && (op.getGender()).equals("Male") )
				{
					++countvm;
					
				}
				if(age>=0 &&  (op.getGender()).equals("Female") )
				{
					++countvf;
					
				}
				if(age>=0 && age<1 && (op.getGender()).equals("Male") )
				{
					++count0;
					
				}
				if(age>=0 && age<1 && (op.getGender()).equals("Female") )
				{
					++count00;
					
				}
				
				if(age>=1 && age<=5 && (op.getGender()).equals("Male") )
				{
					++count;
					
				}
				if(age>=1 && age<=5 && (op.getGender()).equals("Female") )
				{
					++count1;
					
				}
				
				if(age>=6 && age<=17 && (op.getGender()).equals("Male") )
				{
					++count2;
					
				}
				if(age>=6 && age<=17 && (op.getGender()).equals("Female") )
				{
					++count3;
					
				}
				
				if(age>=18 && age<=49 && (op.getGender()).equals("Male") )
				{
					++count4;
					
				}
				if(age>=18 && age<=49 && (op.getGender()).equals("Female") )
				{
					++count5;
					
				}
				if(age>=50 && age<=80 && (op.getGender()).equals("Male"))
					
				{
				++count6;
				}
				if(age>=50 && age<=80 && (op.getGender()).equals("Female"))
					
				{
				++count7;
				}
                if(age>=80 &&  (op.getGender()).equals("Male"))
					
				{
				++count8;
				}
				if(age>=80 && (op.getGender()).equals("Female"))
					
				{
				++count9;
				}
				
				
			}
			/*System.out.println("Count 1 to 5 Male "+count);
			System.out.println("Count 1 to 5 Female"+count1);
			System.out.println("Count 6 to 17 Male "+count2);
			System.out.println("Count 6 to 17 Female"+count3);
			System.out.println("Count 18 to 49 Male "+count4);
			System.out.println("Count 18 to 49 Female"+count5);
			System.out.println("Count 50 to 80 Male "+count6);
			System.out.println("Count 50 to 80 Female"+count7);*/
			
			//Victim
			List<Victim> victimlist=us2.selectAll();
			for(Victim vt:victimlist)
			{
				int age=Integer.parseInt(vt.getAge());
				
				if(age>=0 && (vt.getGender()).equals("Male") )
				{
					++countvm;
					
				}
				if(age>=0 &&  (vt.getGender()).equals("Female") )
				{
					++countvf;
					
				}
				if(age>=0  && age<1 && (vt.getGender()).equals("Male") )
				{
					++count0;
					
				}
				if(age>=0  && age<1 && (vt.getGender()).equals("Female") )
				{
					++count00;
					
				}
				
				if(age>=1 && age<=5 && (vt.getGender()).equals("Male") )
				{
					++count;
					
				}
				if(age>=1 && age<=5 && (vt.getGender()).equals("Female") )
				{
					++count1;
					
				}
				
				if(age>=6 && age<=17 && (vt.getGender()).equals("Male") )
				{
					++count2;
					
				}
				if(age>=6 && age<=17 && (vt.getGender()).equals("Female") )
				{
					++count3;
					
				}
				
				if(age>=18 && age<=49 && (vt.getGender()).equals("Male") )
				{
					++count4;
					
				}
				if(age>=18 && age<=49 && (vt.getGender()).equals("Female") )
				{
					++count5;
					
				}
				if(age>=50 && age<=80 && (vt.getGender()).equals("Male"))
					
				{
				++count6;
				}
				if(age>=50 && age<=80 && (vt.getGender()).equals("Female"))
					
				{
				++count7;
				}
                if(age>=80 &&  (vt.getGender()).equals("Male"))
					
				{
				++count8;
				}
				if(age>=80 &&  (vt.getGender()).equals("Female"))
					
				{
				++count9;
				}
				
				
			}
			
			request.setAttribute("countvm", countvm);
			request.setAttribute("countvf", countvf);
			request.setAttribute("0male", count0);
			request.setAttribute("0female", count00);
			request.setAttribute("1to5male", count);
			request.setAttribute("1to5female", count1);
			request.setAttribute("6to17male", count2);
			request.setAttribute("6to17female", count3);
			request.setAttribute("18to49male", count4);
			request.setAttribute("18to49female", count5);
			request.setAttribute("50to80male", count6);
			request.setAttribute("50to80female", count7);
			request.setAttribute("over80male", count8);
			request.setAttribute("over80female", count9);
			
			System.out.println("VCount total Male "+countvm);
			System.out.println("VCount total Female"+countvf);
			System.out.println("VCount 0 Male "+count0);
			System.out.println("VCount 0 Female"+count00);
			System.out.println("VCount 1 to 5 Male "+count);
			System.out.println("VCount 1 to 5 Female"+count1);
			System.out.println("VCount 6 to 17 Male "+count2);
			System.out.println("VCount 6 to 17 Female"+count3);
			System.out.println("VCount 18 to 49 Male "+count4);
			System.out.println("VCount 18 to 49 Female"+count5);
			System.out.println("VCount 50 to 80 Male "+count6);
			System.out.println("VCount 50 to 80 Female"+count7);
			System.out.println("VCount 80 to 200 Male "+count8);
			System.out.println("VCount 80 to 200 Female"+count9);
			
			
			page="/presentation/View1.jsp";
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
