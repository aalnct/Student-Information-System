<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<script>
	$(function(){
		$('#new-dept-info-submit').click(function(){
				//Submitting the ajax request to insert the information 
				//for new department and dept head
				
				var deptName=$('input:text[name=departmentName]').val();
				var departmenthead = $('input:text[name=department_Head_Name]').val();
				
				/* var name1 = $('.input-group #departmentName').prop('name'); */
				
				var param = 'deptName=' + deptName + '&departmentheadName=' + departmenthead;
				
				
				/* var dept_name = $('#deptName').attr("name");
				var dept_head_name = $('#departmentheadName').attr("name");
				var data = 'dept_name='+ encodeURIComponent(dept_name) + '&dept_head_name='+ encodeURIComponent(dept_head_name) */
				
				$.ajax ({
						type:'post',
						
						data :param,
						
						url : '/StudentInformationSystem/admin',
						
						success:function(response){
							alert(response)
						},
						
						error : function(response){
							alert('404 page not found');
						},
						});
				});
		});
	
</script>

<div id="departmentbox" style="margin-top: 50px;"
				class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-3">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Add Department</div>
						
			</div>
						<div style="padding-top: 30px" class="panel-body">
							
							<div style="display: none" id="login-alert"
								class="alert alert-danger col-sm-12"></div>
								
						
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon">
											<i class="glyphicon glyphicon-user"></i>
										</span>
										<input id="deptName" type="text" class="form-control" 
													
															data-validate="require" name="departmentName" placeholder="Department name">
										</div>
								
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon">
											<i class="glyphicon glyphicon-lock"></i>
										</span>
										<input id="departmentheadName" type="text" class="form-control" 
											data-validate="require" name="department_Head_Name" placeholder="Department Head Name">
									</div>
									
									
                                   <div style="margin-top:10px" class="form-group">
                                   		<div class="col-sm-12 controls">
                                   			<button type="button" class="btn btn-primary" id ="new-dept-info-submit" value="Submit">Submit</button>
                                   		</div>
                                   </div>
								
								
							</div>
						</div>


					<div>
						<form:form action ="login" id="loginForm" class="form-horizontal" role="form" method="post"  commandName="login">
									
									
								
						</form:form>
					</div>
				
			</div>