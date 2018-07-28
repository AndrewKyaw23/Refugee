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

 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/style.css">
  <script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/jss/category.js"></script>
  
   <!-- date picker -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/datepicker/css/datepicker.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/less/bootstrap-datepicker.js"></script>
<!-- end date picker -->
<!-- age calculation -->
<script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>
<!--Latest compiled and minified JavaScript-->
<script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/plugins/moment/moment.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
  <!-- end age calculation -->
<script language="javascript">
   function Submit () 
   {
	   var t=confirm("Are you sure");
	   if(t)
		   {
		   return true;
		   }
	   else
		   {
		   return false;
		   }
	   
   }
   
    
   </script>
</head>
<body>
<div class="cotainer-fluid">
<%@ include file="Nav.jsp" %>
<br>
<br>
<br>


 <!-- adding -->

     
     
<%IHeaderService tsService=(HeaderService)SpringBeanFactory.getBean("HeaderService");
List<Header> tsl= tsService.selectAll();
%>
  <center> <h3>Refugee Registeration</h3></center>
<form onsubmit="return Submit()" action="/Victim/VictimController" name="sample"> 

<table align="center">

<tr>
<td>Family Header Name</td>
<td>
    <div class="dropdown">
      <select class="form-control" name="victimcombo">
      <%for(Header ts:tsl){ %>
      <option value="<% out.print(ts.getHeader_id());%>"><%out.print(ts.getFamilyHeaderName()); %></option>
      <%} %>
      </select>
     
      </div>
      
    
</td>
</tr>

<tr>
<td>Name</td>
<td><input type="text" name="txtName" id="txtName"  class="form-control"  required/></td>
</tr>


	
<tr>
<td>NRC</td>
<td><input type="text" name="txtNrc" id="txtNrc"  class="form-control"  required/></td>
</tr>

<tr>
<td>BOD(DD-MM-YY)</td>
<td>
<div class="form-group">
					<div class='input-group date' name="txtBOD" id='datetimepicker1' >
					<input type='text' name="txtBOD" class="form-control" required/>
					<span class="input-group-addon">
					<span class="glyphicon glyphicon-calendar"></span>
					</span>
					</div>
					</div>
					</td>
</tr>

<tr>
<td>Age</td>
<td>
<div class="form-group">
	
		<input type="text" name="txtAge" id="age" class="form-control" required/>
		</div></td>
</tr>
<!-- age calculation -->


<script language="javascript">
function setAge(d)
{
var age = moment().diff(d, 'years', true);
var newage=parseInt(age);
$('#age').val(newage);
}
 
$(function() {
$('.manual').change(function() {
var isoDate = new Date($(this).val()).toISOString();
setAge(moment(isoDate));
});
$('#datetimepicker1').datetimepicker().on('dp.change', function(e) {
setAge(e.date);
});
});
</script>


<!-- end age calculation -->
<tr>
<td>Father's Name</td>
<td><input type="text" name="txtFName" id="txtFName"  class="form-control"  required/></td>
</tr>

<tr>
<td>Original Village</td>
<td><input type="text" name="txtAddress" id="txtAddress"  class="form-control"  required/></td>
</tr>

<tr>
<td>Arrival date</td>
<td><input type="date" name="txtAdate" id="txtAdate"  class="form-control"  required/></td>
</tr>

<tr>
<td>Arrival Time</td>
<td><input type="time" name="txtAtime" id="txtAtime"  class="form-control"  required/></td>
</tr>

<tr>
<td>Grade</td>
<td><input type="text" name="txtGrade" id="txtGrade"  class="form-control"  required/></td>
</tr>

<tr>
<td>Camp Name</td>
<td><input type="text" name="txtCName" id="txtCName"  class="form-control"  required/></td>
</tr>

<tr>
<td>Gender</td>
<td>
    <div class="radio">
     <label><input type="radio" name="optradio" id="optradio" value="Male" required>Male</label>
     </div>
     <div class="radio">
     <label><input type="radio" name="optradio" id="optradio" value="female" required>Female</label>
     </div>
</td>
</tr><br>

<tr>
      <td>Religion</td>
      <td><input type="text" name="txtReligion" id="txtReligion"  class="form-control"  required/></td>
</tr>

<tr>
       <td>Remark</td>
       <td><input type="text" name="txtRemark" id="txtRemark"  class="form-control"  required/></td>
</tr>

 <tr>
<td><input class="btn btn-primary" name="page" type="submit" value="Submit"></td>
<td><input class="button-primary" type="reset" name="btnCancel" value="Cancel" class="btn btn-primary"></td>
</tr>

</table>
</form>
</div>  
<!-- end adding -->
 
</body>
</html>