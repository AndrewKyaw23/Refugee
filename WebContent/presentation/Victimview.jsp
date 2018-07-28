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
        		<th>Edit</th>
        		<th>Delete</th>
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
		        
		        <td>
		        <ul>
		      <li class="w3-container w3-hover-blue p10" data-toggle="modal" data-target="#rowEd" 
		      onclick="submit('<%out.print(ts.getFamilyHeaderName());%>',
		      '<%out.print(ca.getVictim_id());%>','<%out.print(ca.getName());%>',
		      '<%out.print(ca.getNRC());%>', '<%out.print(ca.getBOD());%>',
		      '<%out.print(ca.getAge());%>','<%out.print(ca.getFather_Name());%>',
		      '<%out.print(ca.getAddress());%>','<%out.print(ca.getArrival_Date());%>',
		       '<%out.print(ca.getArrival_Time());%>','<%out.print(ca.getGrade());%>',
		       
		       '<%out.print(ca.getCamp_Name());%>','<%out.print(ca.getGender());%>',
		       '<%out.print(ca.getReligion());%>','<%out.print(ca.getRemark());%>')">
		      <span class="glyphicon glyphicon-edit"></span> Edit</li>
			   
			    </ul></td>
			   
		        <td><ul> 
		       <li class="w3-container w3-hover-blue p10" onclick="confirmDelete('<%out.print(ca.getVictim_id());%>')">
					 <span class="glyphicon glyphicon-remove-circle"></span><a href="/Victim/VictimController?page=remove&Victim_id=<%out.print(ca.getVictim_id());%>">Delete</a>
			   </li>
			   </ul> </td>
		      </tr>
		      
		      <script type="text/javascript">
     			function confrimEdit(){
     				if(confirm("Are you sure to edit")){
     					return true;
     				}else return false;
     			}
     		
								function submit(){
									document.getElementById("victimcombo1").value=arguments[0];
									document.getElementById("Victimid").value=arguments[1];
									document.getElementById("VName").value=arguments[2];
									document.getElementById("VNrc").value=arguments[3];
									document.getElementById("VBod").value=arguments[4];
									document.getElementById("VAge").value=arguments[5];
									document.getElementById("VFatherName").value=arguments[6];
	
									document.getElementById("VAddress").value=arguments[7];
									
									document.getElementById("VArrivalDate").value=arguments[8];
									document.getElementById("VArrivalTime").value=arguments[9];
									document.getElementById("VGrade").value=arguments[10];
									document.getElementById("VCampName").value=arguments[11];
									
									alert(arguments[12]);
					       			if(arguments[12]=="Male"){
					       				document.getElementById("optradio1").checked;
					       				
					       			}else document.getElementById("optradio2").checked;
					       			
									
									document.getElementById("VReligion").value=arguments[13];
									document.getElementById("VRemark").value=arguments[14];
																						
								}
								function confirmDelete() {
									
									var r=confirm("Are you sure to delete this row");
							  		if(confirm("Do you want to delete really!!")){
							  			location.href="/Victim/VictimController?page=remove&Victim_id="+arguments[0];
							  		}
							  		else{
							  			alert("Cann't delete.....");
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
					          		<h4 class="modal-title">Editing Victim Information</h4>
					       		</div>
					       		
					       		
					       		<form onsubmit="return confrimEdit()" name="sample" action="/Victim/VictimController">
						        <div class="modal-body p10">
						          	
						          	   	<table>     
						          	   	<div class="col-sm-4">  
           <tr><td><label for="lblFamilyHeaderName">Enter New Family Header name</label></td>
        	<td>
        		<select name="victimcombo1" id="victimcombo1" style="width: 100%;" required>
        		<% IHeaderService hs = (IHeaderService) SpringBeanFactory
        		.getBean("HeaderService");
        		
							List<Header> t2;
			
							t2=hs.selectAll();
									 for(Header t:t2){ %>
										<option value="<% out.print(t.getHeader_id()); %>">
											<% out.print(t.getFamilyHeaderName()); %>
										</option>
										<% } %>
								</select>
            </td>
        </tr>
         <tr>
										     
										        <td><input class="u-full-width form-control" type="hidden" name="Victimid" id="Victimid" required/>
										         </td></tr>     
    <tr>
        <td>&nbsp;</td>
        </tr>
        <tr>
        	<td><label for="lblName">Enter New  Name</label></td>
        		<td><input class="u-full-width form-control1"  type="text" name="VName" id="VName" required/>
            </td>
        </tr>
        <tr>
        <td>&nbsp;</td> 
        </tr>
        <tr><td><label for="lblNRC">Enter New  NRC</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text"  name="VNrc" id="VNrc" required/>
        	</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblBOD">Enter New BOD</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="date" name="VBod" id="VBod" required/>
        	</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblAge">Enter New Age</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VAge" id="VAge" required/>
        	</td>
        </tr>
        </div>
        <div class="col-sm-4">
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr>
        	<td><label for="lblFatherName">Enter New Father Name</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VFatherName" id="VFatherName" required/>
        	</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblAddress">Enter New Address</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VAddress" id="VAddress" required/>
        	</td>
        </tr>
       <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblArrivalDate">Enter New Arrival date</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="date"  name="VArrivalDate" id="VArrivalDate" required/>
        	</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblArrivalTime">Enter New Arrival time</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="time" name="VArrivalTime" id="VArrivalTime" required/>
        	</td>
        </tr>   
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblGrade">Enter New Grade</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VGrade" id="VGrade" required/>
        	</td>
        </tr>
        </div>
     <div class="col-sm-4">
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr>
        	<td><label for="lblCampName">Enter New Camp Name</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VCampName" id="VCampName" required/>
        	</td>
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
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblReligion">Enter New Religion</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VReligion" id="VReligion" required/>
        	</td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr><td><label for="lblRemark">Enter New Remark</label></td>
        	<td>
        		<input class="u-full-width form-control1" type="text" name="VRemark" id="VRemark" required/>
        	</td>
        </tr>
         </div>
        <tr>
        <td>&nbsp;</td><td>&nbsp;</td>
        </tr>
        </table>          
          
						        </div>
						        <div class="modal-footer p10">
						        	<input type="submit" class="btn btn-default w3-container w3-light-blue p10" name="page" value="Edit"/>
						        	<button type="reset" class="btn btn-default w3-container w3-light-blue p10">Cancel</button>
						          	<button type="button" class="btn btn-default w3-container w3-light-blue p10" data-dismiss="modal">Close</button>
						        </div>     
              </form>
						        </div>
						        </div>
						        </div>



</body>
</html>