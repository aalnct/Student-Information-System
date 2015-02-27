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

<title>Enter your address Details</title>

<script type="text/javascript">
				$(function(){
						$('#addressid').click(function(){
								
						});
						
						$('#goBack').click(function(){
							
					});
						
				});
			</script>

</head>
<body>
	<div class="container">

		<div id="addressbox" style="padding-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="text-center">Please Enter your Address</div>
					</div>
				</div>

				<div style="padding-top: 30px" class="panel-body">

					<div style="display: none" id="address-alert"
						class="alert alert-danger col-sm-10"></div>

					<div class="span12">
						<form:form action="studentdepartment" method="POST" name="addressform"
							commandName="address" class="form-horizontal">

							<div class="form-group text-center">

								<label for="address_Line1" class="col-md-2 control-label"></label>

								<div class="col-md-5">

									<input type="text" class="form-control" name="address_Line1"
										placeholder="Enter Address Line 1">
								</div>


							</div>
							<div class="form-group">
								<label for="address_Line2" class="col-md-2 control-label"></label>

								<div class="col-md-5">
									<input type="text" class="form-control" name="address_Line2"
										placeholder="Enter Address Line 2">
								</div>
							</div>


							<div class="form-group">
								<label for="city" class="col-md-2 control-label"></label>

								<div class="col-md-5">
									<input type="text" class="form-control" name="city"
										placeholder="Enter City Name">
								</div>
							</div>

							<div class="form-group">
								<label for="state" class="col-md-2 control-label"></label>

								<div class="col-md-5">
									<input type="text" class="form-control" name="state"
										placeholder="Enter State Name">
								</div>
							</div>

							<div class="form-group">
								<label for="zipCode" class="col-md-2 control-label"></label>

								<div class="col-md-5">
									<input type="text" class="form-control" name="zipCode"
										placeholder="Enter your zip Code">
								</div>
							</div>

							<!-- <div style="margin-top:10px;"  class="form-group"> -->

							<div class="col-sm-12 controls">
								<input type="submit" class="btn btn-success btn-md"
									value="Ok! Just last Information" id="addressid"> <input
									type="submit" class="btn btn-info btn-md" value="Want to go back!"
									id="goBack">
							</div>
						</form:form>

					</div>
				</div>


			</div>
		</div>
	</div>
</body>
</html>