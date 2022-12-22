<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/manager.css">

  <script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
  
  <title>관리자 상품관리 페이지</title>
</head>
<body>
  <div class="managerpage">
    <div class="manager_nav">
      <li><a href="">상품 관리</a></li>
      <li><a href="">고객 관리</a></li>
      <li><a href="">주문 관리</a></li>
      <li><a href="">게시판 관리</a></li>
      <li><a href="/main">메인페이지</a></li>
    </div>
    <div class="manager_tools">

      <div class="manager_list">
        
        <li><a  data-clk="1"  onclick="changepage(this)">상품등록</a></li>
        <li><a  data-clk="2"  onclick="changepage(this)">상품관리</a></li>
        <li><a  data-clk="3"  onclick="changepage(this)">판매내역</a></li>
        <li><a  data-clk="4"  onclick="changepage(this)">재고확인</a></li>
        
        <li>
          <div class="manager_search" >
            <label for="">메뉴명 검색</label><br>
            <input type="text">
            
          </div>
        </li>
      </div>
      <div class="manager_main">
   
      </div>
    </div>
  </div>
  <script>
   
   let box= document.querySelector(".manager_main")
   function changepage(e){
	   box.innerHTML="";
  	if(e.dataset.clk==1){
  		box.innerHTML=`<%@ include file="itemform.jsp" %>`;
  		
   	}else if(e.dataset.clk==2){
   		box.innerHTML=`<%@ include file="itemboard.jsp" %>`;
   		
   	}else if(e.dataset.clk==3){
   		box.innerHTML=`<%@ include file="ordermanage.jsp" %>`;
   	
   	}else if(e.dataset.clk==4){
   		box.innerHTML=`<%@ include file="itemstock.jsp" %>`;
   		
   	}
	   
	   
   }
  </script>
<script type="text/javascript" src="/js/manager.js"></script>


</body>
</html>