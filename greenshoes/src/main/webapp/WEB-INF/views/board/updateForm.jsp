<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/inquiry.css">
</head>
<body>
<%@ include file="../layout/header.jsp"%>
<div id=container>
        <div id="Inquiry_wrap">    
          <h2>수정하기</h2>
           
          <form action="" method="" id="Inquiry_form">
              <div>
              <input type="hidden" id="id" value="${board.id}">
             제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="text" name="Inquiry_title" id="title" size="50" maxlength="100"
              value="${board.title}">
              </div>
              <div>
           상품명&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="Inquiry_product" id="Inquiry_product" size="30" maxlength="100">
              </div>
              <div>
                이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="text" name="Inquiry_name" id="user" size="15" maxlength="100"
                value="${board.users}"  disabled>
              </div>      
              <div id="Inquiry_content">
                <div>문의내용&nbsp;&nbsp;</div>
                <textarea id="contents" rows="18" cols="112" >${board.contents}</textarea>
              </div>
              
            </ul>
          </form>
          <div id="Inquiry_submit">
          <button id="btn-update">수정</button>
          </div>
      </div>
    </div>
<script type="text/javascript" src="/js/board.js"></script>
  <%@ include file="../layout/footer.jsp"%>
</body>
</html>