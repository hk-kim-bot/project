<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/reset.css">
   <link rel="stylesheet" href="/css/detail.css">
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
</head>
<body>
<%@ include file="../layout/header.jsp"%>


<div id="container">
        <div id="board_wrap">
            <div class="board_title">&nbsp; ${board.title}</div>
            <div class="board_subtitle">
                <div>&nbsp;&nbsp;글번호 : <span id="id">${board.id}</span> &nbsp;  작성자 : ${board.users} </div>
                <div class="board_subtitle_etc">
                
                    <div>댓글</div>
                    <div>조회수</div>
                    <div>작성일 &nbsp; <fmt:formatDate pattern = "yyyy/MM/dd" value="${board.createDate}"/></div>
                </div>
            </div>
            <div class="board_content_wrap"> 
                <div class="board_content" >
               
                ${board.contents}
                         
                </div>
            </div>
           <div id="board_button">
          		 <a href="/board/${board.id}/updateForm"><button >수정</button></a>
	             <button id="btn-delete">삭제</button>
	            
           </div>

        </div>
         
</div>


 <%@ include file="../layout/footer.jsp"%>
 <script type="text/javascript" src="/js/board.js"></script>
 
 
</body>
</html>