/**
 * 
 */
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
    
     
      function findlist(){
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
      function resetlist(){
        let table = document.querySelectorAll(".orderinfo_tr"); //주문현황을 가진 테이블의 모든 값을 가져옴
        let inputvalue=document.querySelector("#ordertext");
        table.forEach((item)=>{
          item.style.display="";
        })
        inputvalue.value="";
      }
      