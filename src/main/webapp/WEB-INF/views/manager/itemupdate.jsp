<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link rel="stylesheet" href="/css/iteminput.css">
  
  <!-- 관리자 상품수정 페이지 입니다.-->
  <!-- 모든 값을 가져오기 -->
  <div class="itemupdate_container">
  	<h4>상품 업데이트페이지</h4>
  	
    <form action="" method="" name="" id="input-form" class="inputform" enctype="multipart/form-data">
    <table>
      <colgroup>
        <col class="col_td1">
        <col>
      </colgroup>
          <tr>
            <td>
              <label for="product_name">제품명</label>

            </td>
            <td>
              <input type="text" name="" id="product_name" class="" readonly value="${product.productname}"> <!---->
              <input type="hidden" name="" id="item_id" value="${product.id }"><!-- id 값 저장하는 히든input-->
            </td>
          </tr>
          <tr>
            <td>
              <label for="brand_name">브랜드</label>

            </td>
            <td>
              <input type="text" name="" id="brand_name" class="" readonly value="${product.brand_name}">

            </td>
          </tr>
         
          <tr>
            <td>
              <label for="price">가격</label>
            </td>
            <td>
              <input type="text" name="" id="price" value="${product.price}">
            </td>
          </tr>
          <tr>
            <td>
              <label for="purpose">용도</label>
            </td>
            <td>
              <input type="text" name="" id="purpose" value="${product.purpose}">
            </td>
          </tr>
          <tr>
            <td>
              <label for="material">재질</label>
            </td>
            <td>
              <input type="text" name="" id="material" value="${product.material}">
            </td>
          </tr>
      
          <tr>
            <td>
              <label for="img">사진/이미지</label>

            </td>
            <td>
              <input type="file" name="img" id="img" class="">

            </td>
          </tr>
          
          <tr>
            <td>
              <label for="contents">상세 설명</label>

            </td>
            <td>
              <textarea rows="10" cols="50" name="" id="contents">${product.contents}</textarea>

            </td>
          </tr>
       
          
          
        </table>
    </form>
        <div class="input_btn">
          <button  id="item_update_btn"  onclick="manager.update()">저장</button>
          <button type="reset" id="" class="">취소</button>
		<button type="button" onclick="closedetail()">닫기</button>
        </div>
  </div>
