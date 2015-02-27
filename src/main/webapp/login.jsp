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
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet"> -->
<!-- <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet"> -->


<script type="text/javascript">
				$(function(){
					
					$('#signupbox').hide();	
					
					$('#loginForm').submit(function(event){
						
						var count = 0;
						$('.input_error').remove();
						$('#loginForm [data-validate="require"]').each(function(){
							if(!$(this).val()){
								count++;
								$(this).after($('<div/>').attr({"class":"input_error",'id':'error_'+$(this).attr('name')})
										 .html("This field is required"));
								
							}else{
								$('#error_'+$(this).attr('name')).remove();
							}
						});
						if(count>0){
							event.preventDefault();
						}
					});
					
					
					$('#signUp').click(function(){
							$('#loginbox').hide();
							$('#signupbox').show();
					});
					
					$('#btn-signup').click(function(){
							if(!$(this).val()){
								alert('Enter required information first');
							}
					});
					
				});
		</script>

<title>Students Login Page</title>
</head>
<body>

	<div class="container">
			<div id="loginbox" style="margin-top: 50px;"
				class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Welcome Back</div>
						<div
							style="float: right; font-size: 100%; position: relative; top: -10px">
							<a href="#">Forgot password?</a>
						</div>
			</div>
						<div style="padding-top: 30px" class="panel-body">
							
							<div style="display: none" id="login-alert"
								class="alert alert-danger col-sm-12"></div>
								
							<form:form action ="login" id="loginForm" class="form-horizontal" role="form" method="post"  commandName="login">
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon">
											<i class="glyphicon glyphicon-user"></i>
										</span>
										<input id="login-email" type="Email" class="form-control" 
															data-validate="require" name="email" value="" placeholder="Enter Email">
									</div>
								
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon">
											<i class="glyphicon glyphicon-lock"></i>
										</span>
										<input id="login-password" type="password" class="form-control" 
											data-validate="require" name="password" value="" placeholder="Enter Password">
									</div>
									
									<div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>
                                    
                                   
                                   <div style="margin-top:10px" class="form-group">
                                   		<div class="col-sm-12 controls">
                                   			<input type="submit" class="btn btn-success" value="Sign In">
                                   		</div>
                                   </div>
									
									<div class="form-group">
										<div class="col-md-12 control">
											<div style="border-top: 1px solid#888; padding-top:15px; font-size:85%"></div>
												Don't have an account yet!
												<button type="button" class="btn btn-success" id="signUp">
														Sign Up then
												</button>
										</div>
									</div>
								
								
								</form:form>
							</div>
						</div>


					
				
			</div>
			
				<div id="signupbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" style="margin-top: 50px">
							<div class="panel panel-info">
							 <div class="panel-heading">
								<div class="panel-title">Sign Up Buddy!</div>
								<div style="float:right; font-size: 85%; position: relative; top:-10px">
								<a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
								</div>
									
								<div class="panel-body">
										<form:form action = "Signup" id="signupform" class="form-horizontal" role="form" commandName="student">
										<div id="signupalert" style="display:none" class="alert alert-danger">
			                                    <p>Error:</p>
			                                    <span></span>
		                         		</div>
											
											<div class="form-group">
												<label for="Name" class="col-md-3 control-label">Name</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name = "Name" placeholder = "Your name">
												</div>
											</div>
											
											<div class="form-group">
												<label for="Name" class="col-md-3 control-label">Email Address</label>
												<div class="col-md-6">
													<input type="Email" class="form-control" name = "emailAddress" placeholder = "Email Address">
												</div>
											</div>
											
											
											<div class="form-group">
												<label for="Name" class="col-md-3 control-label">Password</label>
												<div class="col-md-6">
													<input type="password" class="form-control" name = "password" placeholder = "Your Password">
												</div>
											</div>
											
											<div class="form-group">
												<label for="Name" class="col-md-3 control-label">Age</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name = "age" placeholder = "Your Age">
												</div>
											</div>
											
											
											<div class="form-group">
												<label for="Name" class="col-md-3 control-label">Roll Number</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name = "rollno" placeholder = "Roll Number">
												</div>
											</div>
											
									<div class="form-group">
                                    <!-- Button -->                                        
		                                 <div class="col-md-offset-3 col-md-9">
		                                        <input id="btn-signup" type="submit" class="btn btn-info" value="Sign Up"><i class="icon-hand-right"></i>  
		                                        
		                                  </div>
		                               </div>
										
									</form:form>
								</div>
																
								</div>
				
	</div>
	</div>
</body>
</html>