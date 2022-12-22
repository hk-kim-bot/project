let manager={
	input:function(){
		var form = $("#input-form")[0]
		var formdata = new FormData(form);
		formdata.append("img",$("#img").val());
       
		let data={
			brand_name:$("#brand_name").val(),
			product_name:$("#product_name").val(),
			price:$("#price").val(),
			purpose:$("#purpose").val(),
			material:$("#material").val(),
			contents:$("#contents").val(),
		};
new Promise((succ,fail)=>{
		$.ajax({ //이미지 먼저 입력
			 	url : '/api/itemimg',
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
			url:"/api/item",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			
		}).done(function(){
			alert("상품 입력 완료");
			location.href="/auth/manager";
		}).fail(function(error){
			alert(JSON.stringify(error));
			
		});
	
})
	
	},
	update:function(){
		var form = $("#input-form")[0]
		var formdata = new FormData(form);
		formdata.append("imgs",$("#img").val());
        let dataid = $("#item_id").val();
		let data={
			brand_name:$("#brand_name").val(),
			product_name:$("#product_name").val(),
			price:$("#price").val(),
			purpose:$("#purpose").val(),
			material:$("#material").val(),
			contents:$("#contents").val(),
		};
	new Promise((succ,fail)=>{
		$.ajax({ //이미지 먼저 입력
			 	url : '/api/itemimg',
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
			type:"PUT",
			url:"/api/item/"+dataid,
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			
		}).done(function(){
			alert("상품 수정 완료");
			location.href="/auth/manager";
		}).fail(function(error){
			alert(JSON.stringify(error));
			
		});
	
})
	
	},
	delete:function(){
		var id=$("#hiddenproduct_id").val();
			
		$.ajax({
			type:"DELETE",
			url:"/api/item/"+id,
			dataType:"json"
		}).done(function(resp){
			alert("삭제완료");
			location.href="/auth/manager";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	}
}
let size={
	input:function(){
		let productid =$("#product_id").val();
		let data={
		
			item_size:$("#product_size").val(),
			item_stock:$("#product_stock").val()
		}
		$.ajax({ //사이즈 입력
			 	url : '/api/itemsize/'+productid,
                type : 'POST',
               	data:JSON.stringify(data),
				contentType:"application/json; charset=utf-8",
				dataType:"json"
		      
		}).done(function(resp){
			alert("재고입력 완료");
			location.href="/auth/manager";
			
		}).fail(function(error){
			alert(JSON.stringify(error));
			alert("혹은 이미 재고가 존재합니다.")
		});
	},
	update:function(){
		let productid =$("#id").val();
		let data={
			item_size:$("#size").val(),
			item_stock:$("#stock").val()
		}
		$.ajax({
			url:"/api/itemsize/"+productid,
			type: "PUT",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("재고 변경 완료");
			location.href="/auth/manager";
		}).fail(function(error){
			console.log(error);
			alert(JSON.stringify(error));
		})
	}
	
	
}

  function findlist(){
      let svalue = document.querySelector("#itemfindvalue").value; //select 의 값
      let table = document.querySelectorAll(".item_info_tr"); //주문현황을 가진 테이블의 모든 값을 가져옴
      
      let inputvalue=document.querySelector("#finditem").value; // 검색창에 입력된 값을 가져옴
      
      table.forEach((item)=>{
        
        let id = item.querySelector("."+svalue).textContent // item중에 select의 값을 가지는 class를 검색- 안에 쓰인 텍스트를 가져옴
        console.log(id)
    
        if(id.includes(inputvalue)){  //검색창에 입력한 값이 있으면
          item.style.display=""; //화면 보이기 
        }else{ //검색창에 입력한 값이 없으면 
          item.style.display="none";//화면에서 안보이기
        }
      })
    
    }
    function resetlist(){
      let table = document.querySelectorAll(".item_info_tr"); //주문현황을 가진 테이블의 모든 값을 가져옴
      let inputbox= document.querySelector("#finditem")
      table.forEach((item)=>{
        item.style.display="";
      })
      inputbox.value="";
      
    }
    
     
      function findorder(){
        let svalue = document.querySelector("#orderfindvalue").value; //select 의 값
        let table = document.querySelectorAll(".orderinfo_tr"); //주문현황을 가진 테이블의 모든 값을 가져옴
        
        let inputvalue=document.querySelector("#ordertext").value; // 검색창에 입력된 값을 가져옴
        
        table.forEach((item)=>{
          
          let id = item.querySelector("."+svalue).textContent // item중에 select의 값을 가지는 class를 검색- 안에 쓰인 텍스트를 가져옴
          console.log(id)
      
          if(id.includes(inputvalue)){  //검색창에 입력한 값이 있으면
            item.style.display=""; //화면 보이기 
          }else{ //검색창에 입력한 값이 없으면 
            item.style.display="none";//화면에서 안보이기
          }
        })
      
      }
      function resetorder(){
        let table = document.querySelectorAll(".orderinfo_tr"); //주문현황을 가진 테이블의 모든 값을 가져옴
        let inputvalue=document.querySelector("#ordertext");
        table.forEach((item)=>{
          item.style.display="";
        })
        inputvalue.value="";
      }
      function opendetail(e){
		let detailpage =document.querySelector(".itemdetail_popup");
		
		let idvalue = e.innerHTML;
		let backpage =document.querySelector(".darkboard");
		let cwidth =document.documentElement.clientWidth;
		let cheight=document.documentElement.clientHeight;
	
		detailpage.style.display="block";
		$.get("/auth/itemdetail/"+idvalue,function(response){
			detailpage.innerHTML=response;
		})
		
		backpage.style.display="block"
		backpage.style.width=cwidth+"px";
		backpage.style.height=cheight+"px";
		backpage.style.backgroundColor='rgba(138, 135, 135, 0.199)';
		
		
		
		}
		function closedetail(){
			let detailpage =document.querySelector(".itemdetail_popup");
			let backpage =document.querySelector(".darkboard");
			detailpage.style.display="";
			backpage.style.display="";
		}
		function updatedetail(){
			let page =document.querySelector(".itemdetail_popup");
			let idvalue= document.querySelector("#hiddenproduct_id").value;
			$.get("/auth/itemupdate/"+idvalue,function(resp){
				page.innerHTML=resp;
			})
		}
		function inputstock(){
			let page=document.querySelector(".itemdetail_popup");
			let productid=document.querySelector("#hiddenproduct_id").value;
			$.get("/auth/itemstock/"+productid,function(resp){
				page.innerHTML=resp;
			})
		}
		function changestock(e){
			let changepage =document.querySelector(".itemdetail_popup");
		
			let idvalue = e.innerHTML;
			let backpage =document.querySelector(".darkboard");
			let cwidth =document.documentElement.clientWidth;
			let cheight=document.documentElement.clientHeight;
	
			changepage.style.display="block";
			$.get("/auth/itemstockchange/"+idvalue,function(response){
			changepage.innerHTML=response;
			})
			
			backpage.style.display="block"
			backpage.style.width=cwidth+"px";
			backpage.style.height=cheight+"px";
			backpage.style.backgroundColor='rgba(138, 135, 135, 0.199)';
		
		}