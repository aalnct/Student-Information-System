<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="javascript/simple-sidebar.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Student Department</title>


					<script type="text/javascript">
						$(function(){
								$('div ul li a').click(function(){
										var relation = $(this).attr('dept');
										alert(relation);
										
										/* $('div[id^=content_]').hide();
										$('#content_' + relation).show(); */
								});
						});
					</script>


</head>
<body>

			<div id="wrapper">
					<!-- sidebar -->
						<div id="sidebar-wrapper">
								<ul class="sidebar-nav">
										<li class="sidebar-brand">
												<div class="panel-info" style="color: white;">
														Student Name
												</div>
										</li>
								</ul>
						</div>
			</div>
				<div class="container">
					<div class="row">
						<div id = "">
							<div class ="studentDepartment"  style="margin-top: 50px;"
										class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div id="departmentsName">
							<div class = "btn-group">
										
										<button type="button" class = "btn btn-primary dropdown-toggle"
													data-toggle="dropdown">
													Select Department Name
												<span class="caret"></span>
										</button>
									
									<ul class="dropdown-menu" role="menu">
										<li>
											<!-- <a href="javascript:void(0)" id="dept" dept = "CS">Computer Science</a> -->
											<a href="javascript:void(0)" id="dept" dept = "dept_CS">Computer Science</a>
											<a href="javascript:void(0)" id="dept" dept = "dept_EX">Electronics</a>
										</li>
									</ul>
									
									
							</div>
						</div>
							</div>
					</div>
					</div>
				</div>
</body>
</html>