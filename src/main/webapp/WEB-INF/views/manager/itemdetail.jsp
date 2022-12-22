<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <link rel="stylesheet" href="/css/itemboard.css">
<!-- 제품의 상세사항을 확인 하는 페이지 입니다. -->
<div class="itemdetail_container">
   	<input type="hidden" value="${product.id }" id="hiddenproduct_id">
   	<input type="hidden" value="${product.product_name }" id="hiddenproduct_name">
   		<h4>상품상세페이지</h4>
   	    <table>
      <colgroup>
        <col class="col_td1">
        <col>
      </colgroup>
          <tr>
            <td>
             <p>제품 명</p>

            </td>
            <td>
              <p>
              	${product.product_name}
              </p>

            </td>
          </tr>
          <tr>
            <td>
              <p>브랜드명</p>

            </td>
            <td>
              <p>
              ${product.brand_name}
              
              </p>

            </td>
          </tr>

          <tr>
            <td>
              <p>가격</p>
            </td>
            <td>
              <p>${product.price}</p>
            </td>
          </tr>
          <tr>
            <td>
              <p>용도</p>
            </td>
            <td>
               <p>${product.purpose}</p>
            </td>
          </tr>
          <tr>
            <td>
              <p>재질</p>
            </td>
            <td>
              <p>${product.material}</p>
            </td>
          </tr>
          
          <tr>
            <td>
              <p>사진</p>

            </td>
            <td>
               <img src="${product.img}">

            </td>
          </tr>
     
          <tr>
            <td>
              <p>상세설명</p>

            </td>
            <td>
              <p>${product.contents}</p>

            </td>
          </tr>

        </table>
        <button onclick="updatedetail()">수정 하기</button>
        <button onclick="manager.delete()">삭제 하기</button>
        <button onclick="inputstock()">수량입력하기 </button>
        <button type="button" class="itemdetail_popupclose" onclick="closedetail()">닫기</button>
  </div>
