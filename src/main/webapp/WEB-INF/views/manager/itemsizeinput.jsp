<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class=itemsizeinput_container>
<form >
	<table>
		<tr>
			<th>
				<label for="product_name">상품명</label>			
			</th>
			<th>
				<input type="text" id="product_name" value="${product.productname}" readonly>
				<input type="hidden" id="product_id" value="${product.id }">
			</th>
		</tr>	
		<tr>
			<th>
			 <label for="product_size">사이즈</label>
			</th>
			<td>
				<select id="product_size">
					<option value="240">240</option>
					<option value="250">250</option>
					<option value="260">260</option>
					<option value="270">270</option>
					<option value="280">280</option>
					<option value="290">290</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>
			<label for="product_stock">수량(재고)</label>
			</th>
			<td>
				<input type="text" id="product_stock">
			</td>
		</tr>
	
	</table>
	

</form>
	<button onclick="size.input()">입력하기</button>
	<button onclick="closedetail()">닫기</button>
</div>