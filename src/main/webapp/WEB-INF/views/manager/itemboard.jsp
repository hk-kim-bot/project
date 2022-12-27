<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link rel="stylesheet" href="/css/itemboard.css">

  <div class="itemboard_manage">
    <div class="itemstatus">
      <select name="" id="itemfindvalue">
        <option value="one" selected>번호</option>
        <option value="two">브랜드명</option>
        <option value="three">제품명</option>
        <option value="three">가격</option>
      </select>
        <input type="text" id="finditem">
        <button type="submit" onclick="findlist()">검색</button>
        <button type="submit" onclick="resetlist()">초기화</button>
    </div>
    <table class="item_info_table">
      <tr class="item_info_table_th">
        <th>/</th>
        <th>브랜드명</th>
        <th>제품명</th>
        <th>가격</th>
      </tr>
	<c:forEach var="product" items="${products.content}">
		<tr class="item_info_tr"> 
    	    <td class="one"><a onclick="opendetail(this)">${product.id}</a></td> <!--update 페이지로 이동-->
        	<td class="two">${product.brand_name}</td>
        	<td class="three">${product.productname}</td>
        	<td class="four">${product.price}</td>
      	</tr>	
	</c:forEach>
    
    </table>
    <div class="darkboard"></div>
    <div class="itemdetail_popup">
    	
    	
    </div>
  </div>
 
