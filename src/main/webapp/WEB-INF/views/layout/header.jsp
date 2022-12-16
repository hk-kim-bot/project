<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/png" sizes="192x192"  href="images/favicon/android-icon-192x192.png">
  <link rel="stylesheet" href="/css/header.css">
  <link rel="stylesheet" href="/css/reset.css">

  <title>Green Shoes</title>
</head>
<body>
<div class="header">
    <div class="headermain">
      <div class="header_logo">
        <a href="/main"><img src="/images/reallogo.png" alt="logo" id="logo"></a>
      </div>
      <div id="search">
        <div id="searchbox">
          <div id="box">
              <input type="text" placeholder="검색어를 입력해 주세요" id="searchinput" onfocus="liston()" onblur="listoff()">
              <button type="button" id="search-icon" onclick="dd()"><img src="/images/searchicon2.png" width="70%" height="70%"></button>
          </div>
          <div class="data">
          <br>
              &nbsp&nbsp최근 검색 목록
          </div>
        </div>
      </div>
      <div class="nav">
        <ul>
          <li><a href="#">장바구니</a></li>
          <li><a href="/user/login">로그인</a></li>
          <li><a href="/user/mypage">마이페이지</a></li>
        </ul>
      </div>
    </div>   
    
    
    
    <div class="headernav">
      <ul class="menu">        
        <li><a href="">For U</a>
          <ul class="submenu">
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
          </ul>
        </li>
        <li><a href="">NEW</a>
          <ul class="submenu">
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
          </ul>
        </li>
        <li><a href="">BEST</a>
          <ul class="submenu">
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
          </ul>
        </li>
        <li><a href="">BRAND</a>
          <ul class="submenu">
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
          </ul>
        </li>
        <li><a href="">SALE</a>
          <ul class="submenu">
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
            <li>하위항목</li>
          </ul>
        </li>
        <li><a href="">중고거래</a></li>
        <li><a href="/board/event">event</a></li>
        <li><a href="/board/csboard">고객센터</a></li>
      </ul>
    </div>
</div>
<script>
  function dd(){
    let text= document.querySelector("#searchinput");
    if(text.value!=null && text.value!=""){
      console.log(text.value);
    }else {
      alert("검색어를 입력해주세요")
    }
  }
</script>
<script src="/js/header.js"></script>
</body>
</html>