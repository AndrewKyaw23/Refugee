<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<%@page import="com.java.plyd.service.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <!-- nav link -->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/bootstrap.min.css">
  <script src="<%=request.getContextPath() %>/JQuery/jquery.js"></script>
  <script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>  
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/style.css">
<!-- end nav link -->
<!-- table link -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/jquery.dataTables.min.css">
    <script src="<%=request.getContextPath() %>/JQuery/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JavaScript/jquery.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/JavaScript/jquery.dataTables.min.js"></script>
  <!--end table link -->
  
  
</head>
<body>
<div class="cotainer-fluid">
<%@ include file="Nav.jsp" %>

<!-- search -->
<br>
<br>
<br>
<br>
<div class="row">

<div class="col-md-1">
</div>

  <div class="col-md-11">
  
<h1>Orphans Information</h1>
     <!--  	 <input  id="myInput" type="text" placeholder="Search Orphans..">
      	 <br>
      	 search script
      	 <script>
  $(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
  </script>
      	 end search script -->
  				<br>
  				   		<form  name="sample" action="/Victim/OrphansController">
  	<table class="table table-bordered table-striped table-center" id="ex">
    			<thead id="dd">
      			<tr>
      			<th>No</th>
        		<th>Name</th>
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
    			
    			
    			
    			<% IOrphansService us = (IOrphansService) SpringBeanFactory.getBean("OrphansService");
        		List<Orphans> c=us.selectAll();
        		int count=1;
		      	for(Orphans ca:c){
				%>
				
			<tr>
				<td><%out.print(count);count++; %></td>
		        <td><%out.print(ca.getName()); %></td>
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
		  </div>
		  </div>
		  </div>
		     
			    

</body>
</html>