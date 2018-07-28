<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<%@page import="com.java.plyd.service.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/bootstrap.min.css">
   <script src="<%=request.getContextPath() %>/JQuery/jquery.js"></script>
  <script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>
   
  <!-- style -->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/style.css">
  
  <!-- table link -->
  
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/jquery.dataTables.min.css">
    <script src="<%=request.getContextPath() %>/JQuery/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JavaScript/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JavaScript/jquery.dataTables.min.js"></script>
  <!--end table link -->	
  <!-- jQuery library -->
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
	  
	  
	
	<!-- Latest compiled JavaScript -->
	<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>  -->
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>
 --%>
	

	<%-- <!-- w3 online links -->
	<!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/w3.css"> --%>
<%-- 
	<!-- font awaresome icon  -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!-- google icon -->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css"> 
	 --%>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#tableorder').DataTable({
				"lengthMenu":[[7,10,25,50,100,-1],[7,10,25,50,100,"All"]]
			});
		} );

	</script>


</head>
<body>
<br>
<%@ include file="Nav.jsp" %>
<form action="/Victim/VictimController">
<table class="table table-bordered table-striped" id="tableorder">
<caption class="w3-container w3-text-black w3-myfont">Training Class Information Lists</caption>
<thead class="w3-container w3-light-blue p10"  id="dd">
    			
      			<tr>
      			<th>No</th>
        		<th>Family Header Name</th>
        		
        		<th>NRC</th>
        		<th>Birth Of Date</th>
        		
       			<th>Age</th>
       			<th>Father Name</th>
       			
       			<th>Gender</th>
       			<th>Camp's Name</th>
       			
       			
        		<th>Date Of Arrival</th>
        		<th>Original Village/Camp</th>
        		
       			<th>Room No</th>
       			<th>Date Of Departure</th>
       			
       		    <th>Remark</th>
        		
        		

      			</tr>
      			
    			</thead>
    			<tbody id="myTable">
    			
    			
    			
    			<% IHeaderService us = (IHeaderService) SpringBeanFactory.getBean("HeaderService");
        		List<Header> c=us.selectAll();
        		int count=1;
		      	for(Header ca:c){
				%>
				
			<tr>
				<td><%out.print(count);count++; %></td>  
		        <td><%out.print(ca.getFamilyHeaderName()); %></td>
		        <td><%out.print(ca.getNrc()); %></td>
		        <td><%out.print(ca.getBOD()); %></td>
		        <td><%out.print(ca.getAge()); %></td>
		        <td><%out.print(ca.getFatherName()); %></td>
		        <td><%out.print(ca.getGender()); %></td>	
		        
		        
		         <td><%out.print(ca.getCampName()); %></td>
		        <td><%out.print(ca.getArrivalDate()); %></td>
		        <td><%out.print(ca.getOriginalVillage()); %></td>
		        <td><%out.print(ca.getRoomNo()); %></td>
		        <td><%out.print(ca.getDepartureDate()); %></td>	
		        <td><%out.print(ca.getRemark()); %></td> 
		        						  
				<%} %>
		  
		   
		  </tr>
		  </tbody>
    			</table>
    			</form>
</body>
</html>