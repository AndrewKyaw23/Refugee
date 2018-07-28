  <div class="row" id="nv">
  <div class="col-md-12">
<nav class="navbar navbar-default navbar-fixed-top" style="background-color: lightgreen;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
 <a class="navbar-brand" href="#">Refugee Camp</a>
      </div>

  <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Homepage.jsp">Home</a></li>
<%--         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victim.jsp">Menu</a></li>
 --%>        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Go To
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          
         <!-- FOR ADDING INFORMATION -->
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victim.jsp">Victim</a></li>
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Header.jsp">Header</a></li>
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Orphans.jsp">Orphans</a></li>
         <!-- FOR END OF ADDING INFORMATION --> 
        
         <%-- <!-- FOR EDITING INFORMATION -->
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victimview.jsp">Victim view</a></li>
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Headerview.jsp">Header view</a></li>
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Orphansview.jsp">Orphans view</a></li>
          <!-- FOR END OF EDITING INFORMATION --> --%>
          
              <!-- FOR TOTAL INFORMATION -->
     
       
        
      </ul>
      </li>
      <!-- FOR SHOWING INFORMATION -->
        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Show<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Headershow.jsp" class="btn btn-info" role="button">Header Show</a></li>
                <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victimshow.jsp" class="btn btn-info" role="button">Victim Show</a></li>
                <li><a href="<%request.getContextPath(); %>/Victim/presentation/Orphansshow.jsp" class="btn btn-info" role="button">Orphans Show</a></li>
                <li><a href="<%request.getContextPath(); %>/Victim/presentation/Vcount.jsp" class="btn btn-info" role="button">Total Refugee Information List</a></li>
                <li><a href="<%request.getContextPath(); %>/Victim/HeaderController?page=view1"  class="btn btn-info" role="button">Gender Information list</a></li>
        
        </ul>
        </li>
        <li><a href="#">FAQ</a></li>
        <li><a href="#">About Us</a></li>
        <!-- View -->
          <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Go To Setting
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
<!--           <li><a href="/Victim/HeaderController?page=view1">View</a></li>
 -->        <%--  
         <!-- FOR ADDING INFORMATION -->
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victim.jsp">Victim</a></li>
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Header.jsp">Header</a></li>
        <li><a href="<%request.getContextPath(); %>/Victim/presentation/Orphans.jsp">Orphans</a></li>
         <!-- FOR END OF ADDING INFORMATION --> --%>
        
          <!-- FOR EDITING INFORMATION -->
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Victimview.jsp">Victim view</a></li>
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Headerview.jsp">Header view</a></li>
         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Orphansview.jsp">Orphans view</a></li>
          <li><a href="<%request.getContextPath(); %>/Victim/presentation/user.jsp">User List</a></li>
          <li><a href="<%request.getContextPath(); %>/Victim/presentation/userlevel.jsp">User Level</a></li>
          <!-- FOR END OF EDITING INFORMATION -->
          
              <!-- FOR TOTAL INFORMATION -->
<%--         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Vcount.jsp">Vcount</a></li>
 --%>       
        <!-- FOR SHOWING INFORMATION -->
<%--         <li><a href="<%request.getContextPath(); %>/Victim/presentation/Show.jsp">Show</a></li>
 --%>        
 
   <script type="text/javascript">
		$(document).ready(function() {
			$('#ex').DataTable({
				"lengthMenu":[[7,10,25,50,100,-1],[7,10,25,50,100,"All"]]
			});
		} );

	</script>
      </ul>
      </li>
      </ul>
  </div>
  
  
      </div>
      </nav>
</div>
</div>