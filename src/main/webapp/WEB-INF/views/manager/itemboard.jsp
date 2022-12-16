<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="/css/itemboard.css">

  <div class="itemboard_manage">

    <div class="itemstatus">
      <select name="" id="itemfindvalue">
        <option value="one" selected>상품번호</option>
        <option value="two">상품이름</option>
        <option value="three">상품금액</option>
      </select>
        <input type="text" id="finditem">
        <button type="submit" onclick="findlist()">검색</button>
        <button type="submit" onclick="resetlist()">초기화</button>
    </div>
    <table class="item_info_table">
      <tr>
        <th></th>
        <th>제품명</th>
        <th>가격</th>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="itemupdate.html">1</a></td> <!--update 페이지로 이동-->
        <td class="two">조던</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">2</a></td>
        <td class="two">나이키</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">3</a></td>
        <td class="two">아디다스</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">4</a></td>
        <td class="two">뉴발란스</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">5</a></td>
        <td class="two">조던</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">6</a></td>
        <td class="two">조던</td>
        <td class="three">16000</td>
      </tr>
      <tr class="item_info_tr"> 
        <td class="one"><a href="">7</a></td>
        <td class="two">조던</td>
        <td class="three">16000</td>
      </tr>
    </table>
  </div>
 <!--  <script>
      
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
    
</script> -->
