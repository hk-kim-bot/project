let manager={
	
	input:function(){
		var form = $("#input-form")[0]
		var formdata =new FormData(form);
		formdata.append("file",$("#file").val());
		data={
			fileimgfile:$("#test").val()
		}
new Promise((succ,fail)=>{
		$.ajax({
			 	url : '/api/itemimg',
                type : 'POST',
                data : formdata,
		      	datatype: "json",
		      	contentType: false,
		      	processData: false,
		}).done(function(){
			succ();
		}).fail(function(error){
			fail();
			alert(JSON.stringify(error));
		});
		
	
		}).then((args)=>{
			$.ajax({
			type:"POST",
			url:"/api/itemimgtext",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			
		}).done(function(resp){
			alert("정보입력완료");
			location.href="/auth/manager";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
			
		})
	
	}
	}
