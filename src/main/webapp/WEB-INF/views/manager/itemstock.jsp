<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <link rel="stylesheet" href="/css/itemboard.css">
	<div class=item_stock_page>
	<h3>GREEN SHOES 재고현황 / 변경페이지</h3>
  <table class="item_stock">
    <tr>
      <th>id</th>
      <th>상품명</th>
      <th>사이즈</th>
      <th>수량</th>
      <th>비고</th>
    </tr>
  <c:forEach var="sizestock" items="${sizestocks.content}">
    <tr class="item_stock_info">
      <th><a onclick="changestock(this)">${sizestock.id}</a></th>
      <th>${sizestock.product.productname }</th>
      <th>${sizestock.item_size}</th>
      <th>${sizestock.item_stock}</th>
      <th>/</th>
    </tr>
    </c:forEach>
    
  </table>
  <div class="darkboard"></div>
    <div class="itemdetail_popup">
	</div>
