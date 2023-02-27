<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>고객센터</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/cs.css"> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">  
</head>
<%@ include file="../layout/header.jsp"%>
<body>    
    <div id="banner">
        <img src="/img/banner2.jpg">
    </div>
    <div id="container">
        <div id="FAQ">
            <h2>FAQ자주 받는 질문</h2>
        </div>
        <div id="FAQsearch">
            <div id="logobox"><img src="/img/logo.png"></div>
            <div id="search1">
                <form>
                    <input id="searchbar" type="text" placeholder="무엇을 도와드릴까요?">
                    <input id="searchbutton" type="submit" value="검색">
                </form>
            </div>
        </div>
        <div class="navbar">
            <nav>
                <ul>
                    <li><a data-ck="1" onclick="page(this)">공지사항</a></li>
                    <li><a data-ck="2" onclick="page(this)">이벤트</a></li>
                    <li><a data-ck="3" onclick="page(this)">상품문의</a></li>
                    <li><a data-ck="4" onclick="page(this)">환불문의</a></li>                  
                </ul>
            </nav>
        </div>
        <div class="box">
        	<%@ include file="noticeboard.jsp" %>        	
        </div>       
        
      
        
    </div>
     <%@ include file="../layout/footer.jsp"%>
     <script>
     	let box= document.querySelector(".box")
     	function page(e){
     		if(e.dataset.ck==1){
     			box.innerHTML=`<%@ include file="noticeboard.jsp" %>`
     		}
     		else if(e.dataset.ck==2){
     			box.innerHTML=`<%@ include file="eventboard.jsp" %>`
     		}
     		else if(e.dataset.ck==3){
     			box.innerHTML=`<%@ include file="productboard.jsp" %>`
     		}
     		else if(e.dataset.ck==4){
     			box.innerHTML=`<%@ include file="refundboard.jsp" %>`
     		}
     	}
     </script>
</body>
</html>