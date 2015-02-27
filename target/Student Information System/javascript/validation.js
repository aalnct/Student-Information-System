$(function(){
	
	$('#loginForm').submit(function(event){
			alert('testing 2');
		var count = 0;
		
		$('#loginForm [data-validate="require"]').each(function(){
			if(!$(this).val()){
				count++;
				alert('testing 2');
			}
		});
		
		if(count>0){
			event.preventDefault();
		}
	
	});

});