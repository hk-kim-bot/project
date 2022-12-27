<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link rel="stylesheet" href="/css/iteminput.css">
 <div class="stockupdate_container">
 	<form class="stockchangeform">
 	<table>
 	<tr>
 	<th>상품명
 	</th>
 	<td>
 		<input type="text" value="${stock.product.productname }" id="name" readonly>
 		<input type="hidden" value="${stock.id }" id="id">
 	</td>
 	</tr>
 	<tr>
 	<th>
 		사이즈
 	</th>
 	<td>
 		<input type="text" value="${stock.item_size }" readonly id="size">
 	</td>
 	</tr>
 	<tr>
 	<th>
 		재고
 	</th>
 	<td>
 		<input type="text" value="${stock.item_stock }" id="stock">
 	</td>
 	</tr>
 	
 	
 	
 	</table>
 	
 	
 	</form>
 	 <button onclick="size.update()">변경 및 저장</button>
 	<button type="button" onclick="closedetail()">닫기</button>
 
 </div>