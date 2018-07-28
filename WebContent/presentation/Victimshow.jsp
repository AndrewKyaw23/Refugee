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
  <h1>Victim Information</h1>
      	<!--  <input id="myInput" type="text" placeholder="Search Victim...">
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
  </script> -->
      	 <!-- end search script -->
  				<br>
  				   		<form  name="sample" action="/Victim/VictimController">
  			<table class="table table-bordered table-striped" id="ex">
<thead id="dd">
      			<tr>
      			<th>No</th>
      			<th>Family Header Name</th>
        		<th>Name</th>
        		<th>NRC</th>
        		<th>BOD</th>
       			<th>Age</th>
       			<th>Father Name</th>
       			<th>Address</th>
       			<th>Arrival date</th>
        		<th>Arrival time</th>
        		
        		<th>Grade</th>
       			<th>Camp Name</th>
       			<th>Gender</th>
       			<th>Religion</th>
        		<th>Remark</th>
        		
      			</tr>
    			</thead>
    			
    			<tbody id="myTable">
    			<% IVictimService us = (IVictimService) SpringBeanFactory.getBean("VictimService");
    			List<Victim> cc=null;
    			IHeaderService tss=(IHeaderService)SpringBeanFactory.getBean("HeaderService");
    			int count=1;
    			cc=us.selectAll();
                System.out.println("Reached\n");
    			
        		for(Victim ca:cc){
				%>
		      	<tr>
		      	
		      	<%Header ts = tss.selectHeader(ca.getHeader_id());%>
		      	<td><%out.print(count);count++; %></td> 
			      <td><%out.print(ts.getFamilyHeaderName());%></td>
		        <td><%out.print(ca.getName()); %></td>
		        <td><%out.print(ca.getNRC()); %></td>
		        <td><%out.print(ca.getBOD()); %></td>
		        <td><%out.print(ca.getAge()); %></td>
		        <td><%out.print(ca.getFather_Name()); %></td>
		        <td><%out.print(ca.getAddress()); %></td>
		        <td><%out.print(ca.getArrival_Date()); %></td>
		        
		        
		         <td><%out.print(ca.getArrival_Time()); %></td>
		        <td><%out.print(ca.getGrade()); %></td>
		        <td><%out.print(ca.getCamp_Name()); %></td>
		       
		        
		        <td><%out.print(ca.getGender()); %></td>
		        <td><%out.print(ca.getReligion()); %></td>
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