<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<%@page import="com.java.plyd.service.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--end nav link -->
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/css/bootstrap.min.css">
  <script src="<%=request.getContextPath() %>/JQuery/jquery.js"></script>
  <script src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/mycss/style.css">
 <!--end nav link -->
  
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
<!--end age calculation -->

</head>
<body>
<div class="cotainer-fluid">
<%@ include file="Nav.jsp" %>
<br>
<br>
<br>

<center><h3>Orphans Registeration</h3></center>


<form  action="/Victim/OrphansController" name="sample" onsubmit="return submitadd()"> 
<!-- adding Header List -->
<table align="center">

<tr>
<td>Name</td>
<td><input type="text" name="FoundlingName" id="FoundlingName" class="form-control" required/></td>
</tr>


	
<tr>
<td>NRC</td>
<td><input type="text" name="Nrc" id="Nrc" class="form-control" required/></td>
</tr>

	
<tr>
<td>Birth Of Date</td>
<td>
                   <div class="form-group">
					<div class='input-group date' name="BOD" id='datetimepicker1' >
					<input type="text" name="BOD" class="form-control" required/>
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
	
		<input type="text" name="Age" id="age" class="form-control" required/>
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


<script language="javascript">
      
function submitadd ()
{
	   var t=confirm("Are you sure adding information");
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
<!-- <!--  
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


end age calculation
 --> 


<tr>
<td>Father's Name</td>
<td><input type="text" name="FatherName" id="FatherName" class="form-control" required/></td>
</tr>


<tr>
<td>Gender</td>
<td>
    <div class="radio">
     <label><input type="radio" name="optradio" id="optradio" value="Male" class="form-control">Male</label>
     </div>
     <div class="radio">
     <label><input type="radio" name="optradio" id="optradio" value="Female" class="form-control">Female</label>
     </div>
</td>
</tr>

<tr>
<td>Camp's Name</td>
<td><input type="text" name="CampName" id="CampName" class="form-control" required/></td>
</tr>

<tr>
<td>Date Of Arrival</td>
<td><input type='date' name="ArrivalDate" class="form-control" required/></td>
					
</tr>

<tr>
<td>Original Village/Camp</td>
<td><input type="text" name="OriginalVillage" id="OriginalVillage" class="form-control" required/></td>
</tr>

<tr>
<td>Room No</td>
<td><input type="text" name="RoomNo" id="RoomNo" class="form-control" required/></td>
</tr>


<tr>
      <td>Date Of Departure</td>
      <td><input type='date' name="DepartureDate" class="form-control" required/></td>
					
</tr>

<tr>
       <td>Remark</td>
       <td><input type="text" name="Remark" id="Remark" class="form-control" required/></td>
</tr>

 <tr>
<td><input class="btn btn-primary" name="page" type="submit" value="Submit"></td>
<td><input class="button-primary" type="reset" name="btnCancel" value="Cancel" class="btn btn-primary"></td>
</tr>

</table>
</form>


</div>
</body>
</html>