<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<title>Welcome to Student Management System</title>

			<script type="text/javascript">
				$(function(){
					
					$('.content').hide();
					
						$('#login-form').submit(function(event){
							
							var count = 0;
							$('#login-form [data-validate="require"]').each(function(){
								if(!$(this).val()){
									count++;
									alert('Please enter required fields');
								}
							});
							
							if(count>0){
								event.preventDefault();
							}
						});
						
						
						$('#showdiv ul li').click(function(){
								var relation = $(this).attr('rel');
								$('div[id^=content_]').hide();
								$('#content_' + relation).show();
						});
				});
			</script>

</head>
<body>
			
			
			
			<form name="login-form" id="login-form">
				
			<!-- <div class="container">
					<div class="row">
					
				
				
				<table>
					
					<tr>
					
					<th>Name</th>
					<td>
					<input type="text" name="user_name" data-validate="require">
					</td>
					</tr>
					
					<tr>
					
					<th>
						Email ID
					</th>
						<td>
						<input type="text" name="email" data-validate="require">
						</td>
					</tr>
					
					<tr>
						<th></th>
						<td>	
					<input type="submit" name="submit" value="Submit"/>	
						</td>		
					</tr>
				
				</table>
						</div>
			</div> -->
				<!-- 
				<div id="showdiv">
						<ul>
							<li rel = "first">First li</li>
							<li rel = "second">Second li</li>
							<li rel = "third">Third li</li>
						</ul>
						
				</div> -->
<!-- 				
				
				<div class="content" id="content_first">
							1st hide li
				</div>
				
				<div class="content" id="content_second">
						2nd hide li
				</div>
						
				<div class="content" id="content_third">		
							3rd hide li
				</div> -->
				
			</form>
			
			
</body>
</html>