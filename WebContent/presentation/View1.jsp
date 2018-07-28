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
 <!--end nav link -->
 <!-- style -->
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/style.css">
 <!--end style -->
  
   </head>
<body>


<div class="cotainer-fluid">
<%@ include file="Nav.jsp" %>



<div class="container">
<!-- Start Searching Age -->

      	 <input class="form-control" id="myInput" type="text" placeholder="Search .....">
  				<br>
  			<table class="table  table-striped" id="ex">
  			 
  			 <tr> 
   
                <td
		         class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#victim"
			    onclick="submit1">Gender of Refugee Total Information List
			    </td>
			    
 </tr>  
 
 <tr>
 <td></td>
 </tr>

 <tr> 
   
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#infants"
			    onclick="submit1">Under 1 year(INFANTS)
			    </td>
			    
 </tr>  
 <tr>
 <td></td>
 </tr>
  <tr>
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#children"
			    onclick="submit1">1 year to 5 years(CHILDREN)
			    </td>
			   
 </tr> 
  <tr>
 <td></td>
 </tr>
 <tr>
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#young"
			    onclick="submit1">6 years to 17 years(YOUNG)
			    </td>
			    
			   
 </tr>   
  <tr>
 <td></td>
 </tr>
 <tr>
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#adults"
			    onclick="submit1">18 years to 49 years(ADULTS)</td>
			    
			  
 </tr>  
  <tr>
 <td></td>
 </tr>
 <tr>
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#elderly"
			    onclick="submit1">50 years to 80 years(Elderly)</td>
			    
			  
 </tr>  
 <tr>
 <td></td>
 </tr>
 <tr>
                <td class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#disability"
			    onclick="submit1">80years and Upper</td>
			    
			   
 </tr>
	    
		      </table>
		      </div>
		     
		    <!-- start of Modal for Searching Victim Total Count the row -->
					<div class="modal fade" id="victim" role="dialog">
					    <div class="modal-dialog" >
					    
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10" >
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">Gender of Refugee Total Information List</h4>
					          		<br>
					          		<!-- From controller for Infants -->
								    <%
									String countvm=(request.getAttribute("countvm")).toString();
									%> 
									<!-- From controller for children female -->
					          		<% String countvf=(request.getAttribute("countvf")).toString();%>	
					          		<table>
					         
					          		<tr>
					          		<td>
					                 Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countvm);  %><br></td>
					          		<td></td>
					          		</tr>
					          		
					          		<tr></tr>
					          		<tr></tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countvf);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		
					       		
					       		
					       		 <!-- end of Modal for Searching Victim Total Count the row -->
		    
		    <!-- start of Modal for Searching INFANTS the row -->
					<div class="modal fade" id="infants" role="dialog">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">Under 1 year(INFANTS)</h4>
					          		<!-- From controller for Infants -->
								    <%
									String countim=(request.getAttribute("0male")).toString();
									%> 
									<!-- From controller for children female -->
					          		<% String countif=(request.getAttribute("0female")).toString();%>	
					          		<table>
					         
					          		<tr>
					          		<td>
					          		Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countim);  %></td>
					          		
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countif);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		
					       		
					       		
					       		 <!-- end of Modal for Searching INFANTS the row -->
  <!-- start of Modal for Searching CHILDREN the row -->
					<div class="modal fade" id="children" role="dialog">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">1 year to 5 years(CHILDREN)</h4>
					          		<!-- From controller for children -->
								    <%
									String countcm=(request.getAttribute("1to5male")).toString();
									%> 
									<!-- From controller for children female -->
					          		<% String countcf=(request.getAttribute("1to5female")).toString();%>		
					          		<table>
					          		<tr>
					          		<td>Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countcm);  %></td>
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countcf);  %></td>
					          		
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		 <!-- end of Modal for Searching CHILDREN the row -->
					       		 
					       		 
				  <!-- start of Modal for Searching YOUNG the row -->	   
					    <div class="modal fade" id="young" role="dialog">
					    <div class="modal-dialog">
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">6 years to 17 years(YOUNG)</h4>
					          		<!-- From controller for young -->
								    <%
									String countym=(request.getAttribute("6to17male")).toString();
									%> 
									<!-- From controller for young -->
								    <%
									String countyf=(request.getAttribute("6to17female")).toString();
									%> 
					          		<table>
					          		<tr>
					          		<td>Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countym);  %></td>
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countyf);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		 <!-- end of Modal for Searching YOUNG the row -->
<!-- start of Modal for Searching ADULTS the row -->	   
					    <div class="modal fade" id="adults" role="dialog">
					    <div class="modal-dialog">
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">18 years to 49 years(ADULTS)</h4>
					      
					                <!-- From controller for Adults -->
								    <%
									String countam=(request.getAttribute("18to49male")).toString();
									%> 
									<!-- From controller for Adults -->
								    <%
									String countaf=(request.getAttribute("18to49female")).toString();
									%>     		
					          		<table>
					          		<tr>
					          		<td>Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countam);  %></td>
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countaf);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		 <!-- end of Modal for Searching ADULTS the row -->			
					       		 <!-- start of Modal for Searching Elderly the row -->	   
					    <div class="modal fade" id="elderly" role="dialog">
					    <div class="modal-dialog">
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">50 years to 80 years(Elderly)</h4>
					          		
					                <!-- From controller for Elderly -->
								    <%
									String countem=(request.getAttribute("50to80male")).toString();
									%> 
									<!-- From controller for Elderly -->
								    <%
									String countef=(request.getAttribute("50to80male")).toString();
									%>     
					          		<table>
					          		<tr>
					          		<td>Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countem);  %></td>
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countef);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		 <!-- end of Modal for Searching Elderly the row -->						       		 
					       		 
					       	
					       		
		 <!-- start of Modal for Searching Disability the row -->	   
					    <div class="modal fade" id="disability" role="dialog">
					    <div class="modal-dialog">
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">80years and Upper</h4>
					          		 <!-- From controller for Disability -->
								    <%
									String countdm=(request.getAttribute("over80male")).toString();
									%> 
									<!-- From controller for Elderly -->
								    <%
									String countdf=(request.getAttribute("over80female")).toString();
									%>     
					          		<table>
					          		<tr>
					          		<td>Male  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  =<%out.print(countdm);  %></td>
					          		</tr>
					          		<tr>
					          		<td>Female &nbsp; =<%out.print(countdf);  %></td>
					          		</tr></table>
					       		</div>  
					       		</div>
					       		</div>
					       		</div>
					       		 <!-- end of Modal for Searching Disability the row -->						       		
</div> 


</body>
</html>