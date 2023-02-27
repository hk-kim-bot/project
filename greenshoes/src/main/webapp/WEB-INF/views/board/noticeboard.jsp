<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<div class="board_list_wrap">
			<div id="board_title">공지사항</div>
            <table class="board_list">
                <caption>게시판 목록</caption>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>글쓴이</th>
                        <th>작성일</th>
                        <th>조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="notice">
                        <td></td>
                        <td class="tit"><a href="">공지사항</a></td>
                        <td>관리자</td>
                        <td>2022-12-07</td>
                        <td>123</td>
                    </tr>
                    <tr class="notice">
                        <td></td>
                        <td class="tit"><a href="">공지사항</a></td>
                        <td>관리자</td>
                        <td>2022-12-07</td>
                        <td>123</td>
                    </tr>
                    <tr class="notice">
                        <td></td>
                        <td class="tit"><a href="">공지사항</a></td>
                        <td>관리자</td>
                        <td>2022-12-07</td>
                        <td>123</td>
                    </tr>
                   <c:forEach var="board" items="${boards.content}">
                    <tr>
                        <td>${board.id}</td>
                        <td class="tit"><a href="/board/${board.id}">${board.title}</a></td>
                        <td>${board.users}</td>
                        <td><fmt:formatDate pattern = "yyyy/MM/dd" value="${board.createDate}"/></td>
                        <td>123</td>
                    </tr>                  
                   
                   
                   </c:forEach>
                   
                  
              
                </tbody>
            </table>
            <div class="write">
                <a href="/board/saveForm"><button onclick="">글쓰기</button></a>
            </div>
            <div class="search2">
                <form>
                    <input id="searchbar2"type="text">
                    <input id="searchbutton2" type="submit" value="검색">
                </form>
            </div>
            <div class="paging">
                <a href="" class="bt">첫 페이지</a>                
                <a href="?page=${boards.number-1}" class="bt">이전 페이지</a>
                <a href="?page=0" class="num">1</a>
                <a href="?page=1" class="num">2</a>
                <a href="?page=2" class="num">3</a>
                <a href="?page=3" class="num">4</a>
                <a href="?page=4" class="num">5</a>    
            	<a href="?page=${boards.number+1}" class="bt">다음 페이지</a>                     
                <a href="" class="bt">마지막 페이지</a>            
            </div>
            
        </div>
</body>
</html>