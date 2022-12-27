<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
  <script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
  
<div>
	<h2>중고 상품 입력 페이지</h2>
	<form id="input-form" enctype="multipart/form-data">
	<input type="text" placeholder="제품명을 입력해주세요" id="product_name"  required>
	<input type="text" placeholder="브랜드 명을 입력해주세요"  id="brand_name" required>
	<input type="text" placeholder="희망가격을 입력해주세요(숫자만입력)" id="price"  required>
	<input type="text" placeholder="사용용도을 입력해주세요"  id="purpose" required>
	<input type="text" placeholder="재질을 입력해주세요"  id="material" required>
	<input type="text" placeholder="상세설명을 입력해주세요"  id="contents" required>
	<input type="text" placeholder="색상을 입력해주세요" id="color"  required>
	<p>대표 이미지 등록</p>
	<input type="file" name="img" id="img"  required>
	</form>
	<button id="olditem-input" onclick="user.check()">등록</button>
</div>



<script type="text/javascript" src="/js/olditem.js">
</script>
  <%@ include file="../layout/footer.jsp"%>