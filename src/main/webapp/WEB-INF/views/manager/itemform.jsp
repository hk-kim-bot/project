<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="/css/iteminput.css">
  

  <!-- 관리자 상품등록 페이지 입니다.-->
  <div class="itemform_container">
    <form action="" method="" id="input-form" class="inputform" enctype="multipart/form-data">
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
              <input type="text" name="" id="product_name" class="">

            </td>
          </tr>
          <tr>
            <td>
              <label for="brand_name">브랜드</label>

            </td>
            <td>
              <input type="text" name="" id="brand_name" class="">

            </td>
          </tr>

          <tr>
            <td>
              <label for="price">가격</label>
            </td>
            <td>
              <input type="text" name="" id="price" placeholder="숫자만 입력">
            </td>
          </tr>
          <tr>
            <td>
              <label for="purpose">용도</label>
            </td>
            <td>
              <input type="text" name="" id="purpose">
            </td>
          </tr>
          <tr>
            <td>
              <label for="material">재질</label>
            </td>
            <td>
              <input type="text" name="" id="material">
            </td>
          </tr>
          
          <tr>
            <td>
              <label for="img">사진/이미지(최대 50mb)</label>

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
              <textarea rows="10" cols="50" name="" id="contents"></textarea>

            </td>
          </tr>
          <tr>
          <td> 
          <label for="color">색상</label>
          </td>
          <td>
          <input type="text" id="color" placeholder="색상" title="문의">
          </td>
          </tr>
          
       
          
          
        </table>
    </form>
        <button id="item-inputbtn" onclick="manager.check()" >저장</button>
       
      
 
  </div>
