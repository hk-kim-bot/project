/**
 * 
 */
 let user={
	check:function(){
		let confirmaction = confirm("등록하시겠습니까?")
		if(confirmaction){
			user.oldinput();
		}else{
			alert("취소하셨습니다.")
		}
		
	},
	oldinput:function(){
		var form =$("#input-form")[0]
		var formdata = new FormData(form);
		formdata.append("img",$("#img").val());
		
		let data={
			brand_name:$("#brand_name").val(),
			product_name:$("#product_name").val(),
			price:$("#price").val(),
			purpose:$("#purpose").val(),
			material:$("#material").val(),
			contents:$("#contents").val(),
			color:$("#color").val()
		};
new Promise((succ,fail)=>{
		$.ajax({ //이미지 먼저 입력
			 	url : '/api/itemimgold',
                type : 'POST',
                data : formdata,
		      	datatype: "json",
		      	contentType: false,
		      	processData: false,
		}).done(function(){
			succ();
		}).fail(function(error){
			alert(JSON.stringify(error));
			fail();
		});
	
}).then((args)=>{
		$.ajax({ //상품정보 입력
			type:"POST",
			url:"/api/itemold",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			
		}).done(function(){
			alert("상품 입력 완료");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
			
		});
	
})
		
		
		
	}
	
}