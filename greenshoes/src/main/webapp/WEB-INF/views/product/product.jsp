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
  <link rel="stylesheet" type="text/css" href="../css/product.css">
</head>
<body>
  <div class="container">
    <div class="main_content">
      <div class="picture">
        <div class=main_picture>
          <img src="../image/adidas1-1.webp" id="first_img">
        </div>
        <div class="btn_box">
        <div class="button_box"><button class="picture_button" id="click1" onclick="openbox()">SHOW MORE</button></div>
        <div class="button_box"><button class="picture_button" id="click2" onclick="closebox()">SHOW LESS</button></div>
        </div>
        <div class="sub_picture">
          <img src="../image/adidas1-2.png" class="subpicture">
          <img src="../image/adidas1-3.png" class="subpicture">
          <img src="../image/adidas1-4.png" class="subpicture">
          <img src="../image/adidas1-5.png" class="subpicture">
          <img src="../image/adidas1-6.png" class="subpicture">
          <img src="../image/adidas1-7.png" class="subpicture">
          <img src="../image/adidas1-8.png" class="subpicture">
          <img src="../image/adidas1-9.png" class="subpicture">
        </div>
      </div>
      <div class="tittle" id="first_tittle"><h2>정보</h2><hr></div>
        <div class="info">
          <div class="info_content">
            <h3>"스포티한 3-스트라이프가 돋보이는 아늑한 슈즈"</h3>
            <p>시간을 초월하는 보드화 스타일로 돌아온 새로운 아디다스 스니커즈를 만나보세요. 캔버스와 스웨이드로 제작된 갑피 하단의 견고한 고무 아웃솔이 단단하게 발을 받쳐줍니다. 패드처리된 푹신한 칼라와 라이트모션+ 쿠셔닝의 조화로 편안하고 기분 좋은 착화감을 선사합니다. 미드탑 디자인이 돋보이도록 크롭 팬츠 또는 테이퍼드 팬츠와 매치할 수 있습니다.
            지속 가능한 면 생산을 목표로 하는 비영리 단체, '베터 코튼 이니셔티브'와 파트너십을 통해 탄생한 제품입니다.</p>
          </div>
          <div class="info_image">
            <img src="../image/adidas1-5.png">
          </div>
        </div>
      <div class="tittle"><h2>세부정보</h2><hr>
        <div class="detail_info">
          <table class="table">
            <colgroup>
              <col>
              <col class="right_td">
            </colgroup>
            <tr>
              <td>제품</td>
              <td>GZ2291</td>
            </tr>
            <tr>
              <td>용도</td>
              <td>Skateboarding</td>
            </tr>
            <tr>
              <td>소재</td>
              <td>겉감 : 100% 면/합성가죽 안감 : 100% 면 창 : 특수배합합성고무</td>
            </tr>
            <tr>
              <td>컬러</td>
              <td>Crystal White / Cloud White / Cloud White
              </td>
            </tr>
            <tr>
              <td>원산지</td>
              <td>베트남</td>
            </tr>
            <tr>
              <td>제조년월</td>
              <td>202207</td>
            </tr>
            <tr>
              <td>제조자</td>
              <td>adidasAG</td>
            </tr>
            <tr>
              <td>수입자</td>
              <td>아디다스코리아(유)</td>
            </tr>
            <tr>
              <td>안전품질표시</td>
              <td>이 제품은 전기용품 및 생활용품 안전관리법에 따른 안전기준을 준수한 제품입니다</td>
            </tr>
          </table>
        </div>
        
      </div>
      <div class="tittle"><h2>리뷰</h2><hr></div>
      <div class="other_product">
      <h2>맞춤형 추천제품</h2>
        <div class="slide">
          <div class="button_box1"><button class="previous"></button></div>
          <div class="slide_show">
            <div class="images">
              <div class="images">
                <img src="../image/useditem.png">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
              </div>
              <div class="images">
                <img src="../image/useditem.png">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
              </div>
              <div class="images">
                <img src="../image/useditem.png">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
              </div>
              <div class="images">
                <img src="../image/useditem.png">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
              </div>
              <div class="images">
                <img src="../image/useditem.png">
                <h1>Tailored Jeans</h1>
                <p class="price">$19.99</p>
                <p><button>Add to Cart</button></p>
              </div>
            </div>
          </div>
          <div class="button_box2"><button class="next"></button></div>
        </div>
      </div>
    </div>
    <div class="sidebar">
      <div class="product_text">Sportswear</div>  
      <div class="product_text">
        <h2>ZNSORED 하이 라이프스타일 어덜트</h2>
        <h3>119,000원</h3>
        <h4>Crystal White / Cloud White / Cloud White</h4>
      </div>
      <div class="product_text" id="size">구입 가능한 사이즈
        <table class="size_table">
          <tr>
            <td>230</td>
            <td>235</td>
            <td>240</td>
          </tr>
          <tr>
            <td>245</td>
            <td>250</td>
            <td>255</td>
          </tr>
        </table>
      <div id=invent style="display:none"><h4>재고 : ??개 남음</h4></div>
      </div>
      <div class="cart">
        <div class="cart_text1"><a href="/product/basket"><h4>장바구니 담기→</h4></a></div>
        <div class="cart_text2"><a href="#"><img src="../icon/heart icon.png" id="heart_icon"></a></div>
        <div class="cart_text3"><a href="#"><h4>다른 추천 제품 보기→</h4></a></div>
      </div>
      <div class="import">
        <ul class="list">
          <div class="popup"><li><a data-ck="1" onclick="ViewLayer(this)"><h4>배송/반품</h4></a></li></div>
          <div class="popup"><li><a data-ck="2" onclick="ViewLayer(this)"><h4>세탁 및 취급 시 주의사항</h4></a></li></div>
          <div class="popup"><li><a data-ck="3" onclick="ViewLayer(this)"><h4>품질 보증 및 AS정보</h4></a></li></div>
          <div class="popup"><li><a data-ck="4" onclick="ViewLayer(this)"><h4>상품 제조연월 정보</h4></a></li></div>
        </ul>
      </div>
    </div>
    <div class="pop" data-pop="1">
      <h3>배송안내</h3>
      <ul>
        <li>상품에 따라 품절 또는 재고부족(제품하자)등의 사유로 배송이 지연되거나 배송이 불가 할 수 있습니다.</li>
        <li>복수의 상품을 한번에 결제하신 경우 빠른 배송을 위해 각각의 상품이 따로 배송될 수 있습니다. 따로 배송되는 경우에도 배송비는 추가되지 않습니다.</li>
        <li>배송은 명절 및 주문이 많은 이벤트/프로모션 행사 기간을 제외하고 입금확인일로부터 영업일 기준 3~5일이내에최대한빠른배송해드립니다. 단, 주말/공휴일의 경우 또는 도서산간지역의경우1-2일더소요될 수 있습니다.</li>
      </ul>
      <h3>반품안내</h3>
      <ul>
        <li>반품요청기간이 지난 경우</li>
        <li>포장을 개봉하였거나 포장이 훼손되어(상품의 Tag분리/분실, 비닐포장 훼손, 신발박스 훼손 등) 상품가치가 현저히 감소한 경우</li>
        <li>액세서리, 전자제품의 포장을 개봉 하였으나 단순 변심으로 반품 원하는 경우</li>
        <li>구매자의 책임있는 사유로 상품 등이 멸실 또는 훼손된 경우</li>
        <li>구매자의 사용 또는 일부 소비에 의하여 상품가치가 현저히 감소한 경우</li>
        <li>기간의 경과에 의하여 재판매가 곤란할 정도로 상품가치가 현저히 감소한 경우</li>
        <li>주문확인 후 상품제작에 들어가는 주문제작 상품인 경우</li>
        <li>복제가 가능한 상품 등의 포장을 훼손한 경우</li>
        <li>단, 재화 등의 내용이 표시 (이미지 또는 기능을 포함) 및 광고 내용과 다르거나 계약내용과 다르게 이행된 때</li>
      </ul>
      <button type="button" class="pop_close" onclick="close_popup()">닫기</button>
    </div>
    <div class="pop" data-pop="2">
      <h2>세탁 및 취급 시 주의사항</h2>
      <h4>신발주의사항</h4>
      <h4>천연가죽</h4>
      <ul>
        <li>건조시킬 때에는 응달에서 말려주십시오.</li>
        <li>젖었을 때에는 직사일광이나 불로 건조 시키지 마십시오.</li>
        <li>오염시 부드러운 솔로 닦고, 슈크리너를 사용하십시오.</li>
        <li>보존시에는 적정한 온도와 습도에서 보관하십이오.</li>
        <li>본제품은 세탁이 불가합니다. </li>
        <li>불꽃 접근시 불길이 옮겨 붙을 가능성이 있으니 주의해 주십시오.</li>
        <li>신발 뒷꿈치를 꺾어 신지 마십시오.</li>
        <li>제품의 수명 연장을 위해 사용 용도를 주의해 주십시오.</li>
      </ul>
      <h4>섬유제품 또는 합성제품</h4>
      <ul>
        <li>건조시킬 때에는 응달에서 말려주십시오.</li>
        <li>기름기가 있는 장소에서의 사용은 피하십시오.</li>
        <li>불옆에 놓으면 변화하거나 변형이 발생할 수 있으니 주의 하십시오.</li>
        <li>표면의 오염 발생시 비눗물을 적신 천을 사용하고, 구두약등의 보혁유를 사용할 필요는 없습니다.</li>
        <li>본제품은 세탁이 불가합니다. </li>
        <li>불꽃 접근시 불길이 옮겨 붙을 가능성이 있으니 주의해 주십시오.</li>
        <li>신발 뒷꿈치를 꺾어 신지 마십시오.</li>
        <li>제품의 수명 연장을 위해 사용 용도를 주의해 주십시오.</li>
      </ul>
      <ul>
        <li>천연장디용이므로 맨땅에서 착화시 스터드(징) 파손 및 부상의 위험이 있습니다.</li>
        <li>사용전 스터드(징) 나사를 단단히 조이지 않으면 부상의 위험이 있습니다. </li>
      </ul>
      <button type="button" class="pop_close" onclick="close_popup()">닫기</button>
    </div>
    <div class="pop" data-pop="3">
      <h2>품질 보증 및 AS정보</h2>
      <h4>품질보증 및 AS정보</h4>
      <h4>품질보증표시</h4>
      <ul>
        <li>본 제품은 공정거래 위원회가 고시한 소비자 분쟁 해결기준에 의거 정당한 소비자 피해에 대해 수리, 환불해 드립니다.</li>
        <li>보증기간 : 판매일로부터 1년</li>
        <li>수입자 : 코리아(유)</li>
        <li>주소 : 서울특별시 서초구 서초대로 74길 4, 삼성생명 서초타워 23층</li>
        <li>대표전화 : 1588-8241</li>
      </ul>
      <h4>A/S 정책안내</h4>
      <p>공식 온라인 스토어에서 구매한 제품은 A/S 정책에 따른 서비스를 제공 받을 수 있습니다.</p>
      <h4>수선 접수 및 심의 프로세스</h4>
      <ul>
        <li>수선 및 심의 접수 : 가까운 공식 오프라인 매장 방문 접수</li>
        <li>수선 및 심의 진행처 : A/S 센터에서 심의 판정 및 수선</li>
        <li>제품 배송 :접수 매장으로 수선 제품 도착 시 고객에게 안내</li>
        <li>수선 및 심의 결과 상담 : 아디다스 고객만족센터 1588-8241(ARS (6))</li>
      </ul>
      <button type="button" class="pop_close" onclick="close_popup()">닫기</button>
    </div>
    <div class="pop" data-pop="4">
      <div  id="last_pop">
      <h1>상품 제조연월 정보</h1>
      <p>본 제품은 수입 상품으로 입고 시기가 상이할 수 있어, 정확한 제조 연월의 확인이 어려우므로 수령하신 제품의 라벨을 참고하시기 바랍니다.</p>
      </div>
      <div><button type="button" class="pop_close" onclick="close_popup()">닫기</button></div>
    </div>
 
  
  </div>
  <script src="../js/slide.js"></script>
  <script src="../js/click.js"></script>
  <script src="../js/glasses.js"></script>
  <script>magnify("first_img",2);</script>
  <script src="../js/popup.js"></script>
  <script src="../js/closepop.js"></script>
  
  <%@ include file="../layout/footer.jsp"%>
</body>
</html>