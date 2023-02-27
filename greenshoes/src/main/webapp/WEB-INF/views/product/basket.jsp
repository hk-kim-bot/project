<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="../css/basket.css">
</head>
<body>

  <div id="container">
    <div class="content">
    <div class="cart">
      <div class="tittle"><h2>장바구니</h2></div>
      <div class="product">
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
                <td><span class="cart_img"><img src="../image/adidas1-2.png" alt="product"></span></td>
                <td><p>adidas</p>
                <p>ZNSORED 하이 라이프스타일 어덜트</p>
                </td>
                <td class="cart_list_option">
                  <p>상품 주문 수량 <input type="number" min="1" style="width:15%;">개</p>
                </td>
                <td><span class="price">116,620원</span><br>
                    <button class="cart_list_orderbtn">주문하기</button>
                </td>
              <td>무료</td>
              </tr>
              <tr class="cart_list_detail">
                <td style="width: 2%;"><input type="checkbox"></td>
                <td style="width: 13%;">
                <span class="cart_img"><img src="../image/adidas1-2.png" alt="product"></span>
                </td>
                <td style="width: 27%;"><p>adidas</p>
                <p>ZNSORED 하이 라이프스타일 어덜트</p>
                </td>
                <td class="cart_list_option" style="width: 27%;">
                  <p>상품 주문 수량 <input type="number" min="1" style="width:15%;">개</p>
                </td>
                <td style="width: 15%;"><span class="price">88,900원</span><br>
                <button class="cart_list_orderbtn">주문하기</button>
                </td>
                <td style="width: 15%;">무료</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="3">
                <button class="cart_list_optionbtn">선택상품 삭제</button>
                </td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tfoot>
          </form>
        </table>
      </div>
    </div>
      <div class="pay">
        <div class="tittle1"><h2>전체합계</h2></div>
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
        <div class="buy_button"><a href="/product/buy"><button type="submit">구매하기</button></a></div>
      </div>
       
      </div>
    </div>
    <%@ include file="../layout/footer.jsp"%>
</body>
</html>