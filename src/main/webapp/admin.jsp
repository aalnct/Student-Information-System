<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Admin User</title>

				
				<script type="text/javascript">
				$(function(){
						
					$('div ul .courses').click(function(){
					
							$.ajax ({
								type : 'get',
								url : '/StudentInformationSystem/department.jsp',
								
								success: function(response){
									$('#right-center-alignment').html(response);
								},
								
								error : function(reponse){
									alert('404 not found');
								}
									
							});
					});
				});
						
				</script>


</head>
<body>
<div class="bs-example" style="margin:25px;">
    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="javascript:void(0)" class="navbar-brand">Admin</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="javascript:void(0)">Home</a></li>
                <li class ="profile"><a href="#">Profile</a></li>
                <li class ="email"><a href="#">Messages</a></li>
                <li class ="courses"><a href="#">Courses</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Login</a></li>
            </ul>
        </div>
    </nav>
</div>
			
			<%-- <form:form class="form-horizontal" action ="admin" commandName="deparmentInformation"> --%>
			
						<div class = "container" style="margin-top: 50px;">
								<div class="col-md-10">
									<div class="text-center">
											<!-- Will append the form in this div -->
											<div id="right-center-alignment" >
														<!-- department.jsp -->
											</div>
									</div>
								</div>
						</div>
					
			<%-- </form:form> --%>

</body>
</html>                                		