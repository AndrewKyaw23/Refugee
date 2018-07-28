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
      	 <input  id="myInput" type="text" placeholder="Search Orphans..">
      	 <br>
      	 <!-- search script -->
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
      	 <!-- end search script -->
  				<br>
  				   		<form  name="sample" action="/Victim/OrphansController">
  	<table class="table table-bordered table-striped table-center">
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
        		
        		<th>Edit</th>
        		<th>Delete</th>
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
		      <td> <ul>
		      <li class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#rowEd"
			    onclick="submit1(
			    '<%out.print(ca.getOrphans_id());%>',
			    '<%out.print(ca.getName());%>',
			    '<%out.print(ca.getNrc());%>',
			    '<%out.print(ca.getBOD());%>',
			    '<%out.print(ca.getAge());%>',
			    '<%out.print(ca.getFatherName());%>',
			    '<%out.print(ca.getGender());%>' ,
			    
			     '<%out.print(ca.getCampName());%>',
			    '<%out.print(ca.getArrivalDate());%>',
			    '<%out.print(ca.getOriginalVillage());%>',
			    '<%out.print(ca.getRoomNo());%>',
			    '<%out.print(ca.getDepartureDate());%>',
			    '<%out.print(ca.getRemark());%>')">
			    <span class="glyphicon glyphicon-edit"></span> Edit</li>
			    </ul></td>
			    <td><ul> 
			   <li class="w3-container w3-hover-blue p10" onclick="confirmDelete('<%out.print(ca.getOrphans_id());%>')">
					 <span class="glyphicon glyphicon-remove-circle"></span><a href="/Victim/OrphansController?page=remove&Orphans_id=<%out.print(ca.getOrphans_id());%>">Delete</a>
			   </li>
			   </ul> </td>
		  </tr>
		    <script >
													function submit(){
														document.getElementById("getOrphans_id").value=arguments[0];
														document.getElementById("getName").value=arguments[1];
														document.getElementById("getNrc").value=arguments[2];
														document.getElementById("getBOD").value=arguments[3];
														document.getElementById("getAge").value=arguments[4];
														document.getElementById("getFatherName").value=arguments[5];
														document.getElementById("getGender").value=arguments[6];
														
														document.getElementById("getCampName").value=arguments[7];
														document.getElementById("getArrivalDate").value=arguments[8];
														document.getElementById("getOriginalVillage").value=arguments[9];
														document.getElementById("getRoomNo").value=arguments[10];
														document.getElementById("getDepartureDate").value=arguments[11];
														document.getElementById("getRemark").value=arguments[12];

														
														
													}
													function confirmDelete() {
														
														var r=confirm("Are you sure to delete this row");
												  		if(confirm("Do you want to delete really!!")){
												  			location.href="/Victim/OrphansController?page=remove&Orphans_id="+arguments[0];
												  		}
												  		else{
												  			alert("Cann't delete.....")
												  		}
													}
									  </script>
				<%} %>
		  
		  
		  
		    </tbody>
            </table>
             </form>
             </div> 
             
             </div>
        </div>			   		
  	 <!-- start of Modal for edition the row -->
					<div class="modal fade" id="rowEd" role="dialog">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      	<div class="modal-content">
					        	<div class="modal-header w3-container w3-light-blue p10">
					         		<button type="button" class="close" data-dismiss="modal">&times;</button>
					          		<h4 class="modal-title">Editing Header Information</h4>
					       		</div>
					       		<script>
					       		 function confirmEdit(){
					       			 if(confirm("Are you sure to edit")){
					       				 return true;
					       			 }
					       			 else return false;				       			 
					       		 }

					       		 function submit1(){
					       			 document.getElementById("idOrphans_id").value=arguments[0];
					       			 document.getElementById("idFoundlingName").value=arguments[1];
					       			document.getElementById("idNrc").value=arguments[2];
					       			document.getElementById("idBOD").value=arguments[3];
					       			document.getElementById("idAge").value=arguments[4];
					       			document.getElementById("idFatherName").value=arguments[5];
					       			alert(arguments[6]);
					       			if(arguments[6]=="Male"){
					       				document.getElementById("optradio1").checked;
					       				
					       			}else document.getElementById("optradio2").checked;
					       			
					       			document.getElementById("idCampName").value=arguments[7];
									document.getElementById("idArrivalDate").value=arguments[8];
									document.getElementById("idOriginalVillage").value=arguments[9];
									document.getElementById("idRoomNo").value=arguments[10];
									document.getElementById("idDepartureDate").value=arguments[11];
									document.getElementById("idRemark").value=arguments[12];
					       			
					       		 }
					       		
					       		</script>
  <form onsubmit="return confirmEdit()" name="sample" action="/Victim/OrphansController">
						        <div class="modal-body p10">
						          	   	<center>
									        <table>
									        <tr>
										        <td></td>
										        <td><input
										              class="u-full-width form-control" type="hidden" name="idOrphans_id" value=" " id="idOrphans_id"/>
										         </td></tr>
									       <tr> 
									       		<td><label for="lblName">Enter New Name</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idFoundlingName" id="idFoundlingName" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									         <tr> 
									       		<td><label for="lblNRC">Enter New NRC</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idNrc" id="idNrc" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									           <tr> 
									       		<td><label for="lblBOD">Enter New Date Of Birth</label></td>
									       		<td><input
									              class="u-full-width form-control" type="date" name="idBOD" id="idBOD" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>   
									        </tr>
									         <tr> 
									       		<td><label for="lblAge">Enter New Age</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idAge" id="idAge" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>   
									        </tr>
									        <tr> 
									       		<td><label for="lblFatherName">Enter New Father Name</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idFatherName" id="idFatherName" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									        
									        <tr>
									        <td><label for="lblGender">Enter New  Gender</label></td>
									        <td>
									         <div class="radio">
                                            <label><input class="u-full-width form-control" type="radio" name="idoptradio" id="optradio1" value="Male" required/>Male</label>
                                                    </div>
                                            <div class="radio">
                                             <label><input class="u-full-width form-control" type="radio" name="idoptradio" id="optradio2" value="Female" required/>Female</label>
                                            </div>
									         </td>
									        </tr>
									    
									          <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									         <tr> 
									       		<td><label for="lblCampName">Enter New Camp Name</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idCampName" id="idCampName" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									           <tr> 
									       		<td><label for="lblArrivalDate">Enter New Arrival Date</label></td>
									       		<td><input
									              class="u-full-width form-control" type="date" name="idArrivalDate" id="idArrivalDate" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>   
									        </tr>
									         <tr> 
									       		<td><label for="lblOriginalVillage">Enter New Original Village</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idOriginalVillage" id="idOriginalVillage" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>   
									        </tr>
									        <tr> 
									       		<td><label for="lblRoomNo">Enter New Room No</label></td>
									       		<td><input
									              class="u-full-width form-control" type="text" name="idRoomNo" id="idRoomNo" value=" " required/></td>
									        </tr>
									        <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									        <tr>
									        <td><label for="lblDepartureDate">Enter New  DepartureDate</label></td><td><input
									              class="u-full-width form-control" type="date" name="idDepartureDate" id="idDepartureDate" value=" " required/></td>
									        </tr>    
									          <tr>
									        <td>&nbsp;</td><td>&nbsp;</td>
									        </tr>
									        <tr>
									        <td><label for="lblRemark">Enter New  Remark</label></td><td><input
									              class="u-full-width form-control" type="text" name="idRemark" id="idRemark" value=" " required/></td>
									        </tr>      
									        </table>
									        </center>
						        </div>
   <div class="modal-footer p10">
						        	<input type="submit" class="btn btn-default w3-container w3-light-blue p10" name="page"  value="Edit"/>
						        	<button type="reset" class="btn btn-default w3-container w3-light-blue p10">Cancel</button>
						          	<button type="button" class="btn btn-default w3-container w3-light-blue p10" data-dismiss="modal">Close</button>
						        </div>
						        </form>
					      	</div>					      
					    </div>
					</div>
					<!-- end of the edition of the row -->		 
</body>
</html>