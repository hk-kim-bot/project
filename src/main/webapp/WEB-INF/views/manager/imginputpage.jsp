<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link rel="stylesheet" href="/css/itemboard.css">
<div class="imginputpage">
	<form class="imginputform" action="/api/itemimginput/${product.id }" method="POST" enctype="multipart/form-data">
	
	<table>
		<tr>
		<th> 상품명
		</th>
		<th>
			<p>${product.productname }</p>
			<input type="hidden" value="${product.id }" id="id">
		</th>
		</tr>
		<tr>
		<th>
		   이미지 등록(이미지등록,최대6개)
		</th>
		<th>
		<input type="file" multiple id="subimgs"name="subimgs">
		</th>
		</tr>
	</table>
	
	<button type="submit">이미지 등록하기</button>
	</form>
	<button type="button" class="itemdetail_popupclose" onclick="closedetail()">닫기</button>

</div>