<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>	
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/png" sizes="192x192"  href="/images/favicon/android-icon-192x192.png">
  <link rel="stylesheet" href="/css/header.css">
  <link rel="stylesheet" href="/css/reset.css">
  <script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>

	<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <title>Green Shoes</title>
</head>
<body>
<div class="header">
    <div class="headermain">
      <div class="header_logo">
        <a href="/"><img src="/images/reallogo.png" alt="logo" id="logo"></a>
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
      
      <c:choose>
				<c:when test="${empty principal}">
				
					<div class="nav">
						<ul>
							<li><a href="#">장바구니</a></li>
							<li><a href="/auth/loginForm">로그인</a></li>
							<li><a href="/auth/joinForm">회원가입</a></li>
						</ul>
					</div>

				</c:when>

				<c:otherwise>
				
					<div class="nav">
						<ul>
							<li><a href="#">장바구니</a></li>
							<li><a href="/user/mypage">마이페이지</a></li>
							<li><a href="/logout">로그아웃</a></li>
						</ul>
					</div>
					
				</c:otherwise>

			</c:choose>
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