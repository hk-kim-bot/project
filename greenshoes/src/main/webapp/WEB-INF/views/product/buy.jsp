<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="../css/buy.css">
</head>
<body>
  <div class="container"> 
    <div class="content">
      <table class="cart__list">
        <form>
          <thead>
          <tr>
            <td><input type="checkbox"></td>
            <td colspan="2">상품정보</td>
            <td>수량</td>
            <td>상품금액</td>
            <td>배송비</td>
          </tr>
          </thead>
          <tbody>
            <tr class="cart_list_detail">
              <td><input type="checkbox"></td>
              <td><span class="cart_img"><img src="../image/adidas1-2.png" alt="magic keyboard"></span></td>
              <td><p>adidas</p>
              <p>ZNSORED 하이 라이프스타일 어덜트</p>
              </td>
              <td class="cart_list_option">
                  <p>상품 주문 수량: 1개</p>
              </td>
              <td><span class="price">116,620원</span><br>
              </td>
            <td>무료</td>
            </tr>
            <tr class="cart_list_detail">
              <td style="width: 2%;"><input type="checkbox"></td>
              <td style="width: 13%;">
              <span class="cart_img"><img src="../image/adidas1-2.png" alt="magic mouse"></span>
              </td>
              <td style="width: 27%;"><p>adidas</p>
              <p>ZNSORED 하이 라이프스타일 어덜트</p>
              
              </td>
              <td class="cart_list_option" style="width: 27%;">
              <p>상품 주문 수량: 1개</p>
              </td>
              <td style="width: 15%;"><span class="price">88,900원</span><br>
              </td>
              <td style="width: 15%;">무료</td>
            </tr>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3">
              <button class="cart_list_optionbtn" id="delete">선택상품 삭제</button>
              </td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </tfoot>
        </form>
      </table>
    </div>
    <div class="main_content">
      <div class="mainbox">
        <h2>주문자 정보</h2>
        <ul class="user_info">
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">이름</span>
            <input class="input_text" type="text" id="usernmae" required></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">이메일</span>
            <input class="input_text" type="text" id="email" required></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">휴대폰번호</span>
            <input class="input_text" type="text"  id="phonenumber" required></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text1">전화번호</span>
            <input class="input_text" type="text"  id="tell"></div>
          </li>
        </ul>
      </div>
      <div class="mainbox">
        <h2>배송지 정보</h2>
        <ul class="user_info">
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">받는분</span>
            <input class="input_text" type="text"  id="username"></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">주소</span>
            <input class="input_text" type="text"  id="address"></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text">휴대폰번호</span>
            <input class="input_text" type="text"  id="phonenumber"></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text1">전화번호</span>
            <input class="input_text" type="text"  id="tell"></div>
          </li>
          <li class="user_info_list">
            <div class="list">
            <span class="info_text1">배송요청사항</span>
            <select class="select_box">
              <option>배송요청사항 선택</option>
              <option>배송 전 미리 연락 바랍니다.</option>
              <option>부재 시 경비실에 맡겨주세요.</option>
              <option>부재 시 문앞에 놓아주세요.</option>
            </select>
          </li>
        </ul>
      </div>
      <div class="mainbox">
        <h2>결제 수단</h2>
        <div class="buy_list">
          <div class="buy_type"><input type="radio" name="buy" value="credit_card" checked><p>신용카드결제</p></div>
          <div class="buy_type"><input type="radio" name="buy" value="account_transfer"><p>실시간 계좌이체</p></div>
          <div class="buy_type"><input type="radio" name="buy" value="imagine_account"><p>가상계좌(무통장입금)</p></div>
          <div class="buy_type"><input type="radio" name="buy" value="naver_pay"><img src="../image/naverpay.png"></div>
          <div class="buy_type"><input type="radio" name="buy" value="kakao_pay"><img src="../image/kakaopay.png"></div>
          <div class="buy_type"><input type="radio" name="buy" value="toss_pay"><img src="../image/tosspay.png"></div>
        </div>
      </div>
      <div class="mainbox">
        <strong>결제안내</strong>
        <p class="buy_guide"> 
          - [결제하기] 버튼을 클릭하면 신용카드 결제 창이 나타납니다.
           신용카드 결제 창을 통해 입력되는 고객님의 카드 정보는 안전하게 암호화되어
            전송되며 승인 처리 후 카드 정보는 승인 성공/실패 여부에 관계없이 자동으로 폐기되므로 안전합니다.
        </p>
        <p class="buy_guide">
           - 국내 모든 카드 사용이 가능하며 해외에서 발행된 카드는 사용하실 수 없습니다.
        </p> 
      </div>
      <div class="sidebox">
        <div class="tittle1"><h2>결제금액</h2></div>
        <div class="right_box_top">
          <div class="right_box_price">
            <div class="right_box_text">상품금액</div>
            <div  class="right_box_text">111111원</div>
          </div>
          <div class="right_box_price">
            <div  class="right_box_text">배송비</div>
            <div  class="right_box_text">0원</div>
          </div>
        </div>
        <div class="total_price">
          <div class="right_box_text">결제 예정 금액</div>
          <div class="last_price">555555원</div>
        </div>
        <div class="buy_button"><a href=""><button type="submit">결제하기</button></a></div>
      </div>
    </div>
    
  </div>
  <%@ include file="../layout/footer.jsp"%>
</body>
</html>