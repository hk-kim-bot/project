/**
 * 
 */
 let admin={
	enroll:function(){
		let data={
			username:$("#adminname").val(),
			userid:$("#userid").val(),
			password:$("#adminpwd").val(),
			email:$("#adminemail").val(),
			phonenumber:$("#adminphone").val(),
			birthday:$("#adminbirthdate").val()
		};
		$.ajax({
			url:"/auth/joinmanager",
			type:"POST",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("admin 등록완료");
			location.href="/auth/usermanage"
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	}
}