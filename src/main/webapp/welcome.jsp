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

					<script type= "text/javascript">
						$(function(){
									
							$('#wrapper a').click(function(){
								
								
								/* var attribute = $('#wrapper[data-type^=link]') */
								
								var r4 = $(this).parent().
								append('<span id ="abc"> abc </span>');

								
								
								
								var r3 = $(this).attr('data-type');
								//alert(r3);
								//alert(r4);
							});
							
							
						});
					</script>
					

</head>
<body>
			
			
			<div id= "wrapper" data-id = "one">
				<div data-id = "two">
					<a href = "javascript:void(0)" data-type = "linkb">Link B</a>
					<a href = "javascript:void(0)" data-type = "link" id = "linkid">Link</a>
				</div>
			</div>


			
			<div id= "wrapper_one" data-id = "one">
					<a href = "javascript:void(0)" data-type = "link" id = "linkid">Link</a>
			</div>
						
			
			
			
			
</body>
</html>