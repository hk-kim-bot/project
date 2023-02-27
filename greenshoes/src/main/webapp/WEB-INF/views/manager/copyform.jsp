<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="/css/iteminput.css">
  

  <!-- 관리자 상품등록 페이지 입니다.-->
  <div class="itemform_container">
    <form action="/api/itemimg" method="post" id="input-form" class="inputform" enctype="multipart/form-data">
    <table>
      	<tr>
            <td>
              <label for="img">설명</label>

            </td>
            <td>
              <input type="text" name="test" id="test" class="">

            </td>
          </tr>
          <tr>
            <td>
              <label for="img">사진/이미지</label>

            </td>
            <td>
              <input type="file" name="file" id="file" class="">

            </td>
          </tr>
     
          
          
        </table>
    </form>
        <button id="item-inputbtn" onclick="manager.input()" >저장</button>
       
      
 
  </div>
