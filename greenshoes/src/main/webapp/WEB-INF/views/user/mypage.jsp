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
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/mypage.css">   
</head>
<body>   

    <div id="container">
        <div id="sidebar">
            <div></div>

            <div class="info_my">
                <h2>마이페이지</h2>
                <ul class="navi">
                    <li><a href="">마이페이지</a></li>
                </ul>
            </div>

            <div class="info_my">
                <h2>쇼핑 내역</h2>
                <ul class="navi">
                    <li><a href="">주문/배송 현황 조회</a></li>
                    <li><a href="">판매 내역</a></li>
                    <li><a href="">취소/교환/반품 신청</a></li>
                    <li><a href="">관심상품</a></li>
                </ul>
            </div>

            <div class="info_my">
                <h2>나의 정보</h2>
                <ul class="navi">
                    <li><a href="/user/updateForm">개인 정보 수정</a></li>
                    <li><a href="/user/out">회원 탈퇴</a></li>
                </ul>
            </div>
        </div>


        <div id="content">
           
                <div id="profil">
                    <div id="profilbox">
                        <div id="user_profil"><img src="../img/mypage/mypage_profil.png"></div>
                        <div id="user_profil01">
                            <p>                              
                            <span value="${principal.user.userid}"> 님은 <b>통합멤버십 회원</b>입니다.<br></span>
                            <b><span class="profil_class">MEMBERSHIP</span></b> <span class="profil_class2">123456789123456<br></span>
                            <b><span class="profil_class">멤버십 회원 가입일</span></b><span class="profil_class2"> 2022.00.00</span>
                            </p>
                        </div>
                        <div id="user_profil02">
                            <div>
                                <div><img src="../img/mypage/아이콘/포인트아이콘.png"></div>
                                <div><a href="" class="profil_side"><b>1000P</b></a></div>
                            </div>
                            <div>
                                <div><img src="../img/mypage/아이콘/쿠폰아이콘.png"></div>
                                <div><a href="" class="profil_side"><b>3개</b></a></div>
                            </div>
                        </div>
                        <div id="user_profil04">
                            <div>
                                <div><img src="../img/mypage/아이콘/장바구니아이콘.png"></div>
                                <div><a href="" class="profil_side"><b style="color: red;">0</b>개</a></div>
                            </div>
                            <div>
                                <div><img src="../img/mypage/아이콘/찜한상품아이콘.png"></div>
                                <div><a href="" class="profil_side"><b style="color: red;">5</b>개</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            






            <div id="recentorder">
                <div id="recentordertitle">최근주문내역</div>
                <div id="orderprocess">
                    <ul>
                        <li>
                            <div class="ordercount"><a href="">0</a></div>
                            <div>입금대기</div>
                        </li>
                        <li>></li>
                        <li>
                            <div class="ordercount"><a href="">0</a></div>
                            <div>결제완료</div>
                        </li>
                        <li>></li>
                        <li>
                            <div class="ordercount"><a href="">0</a></div>
                            <div>상품준비중</div>
                        </li>
                        <li>></li>
                        <li>
                            <div class="ordercount"><a href="">0</a></div>
                            <div>배송중</div>
                        </li>
                        <li>></li>
                        <li>
                            <div class="ordercount"><a href="">0</a></div>
                            <div>수령완료</div>
                        </li>
                    </ul>
                </div>
                <div>
                    <ul id="orderchange">
                        <li>주문취소</li>
                        <li><a href="">0건</a></li>
                        <li>교환신청</li>
                        <li><a href="">0건</a></li>
                        <li>반품신청</li>
                        <li><a href="">0건</a></li>
                    </ul>
                </div>
            </div>



            <div id="mychoice">
                <div id="mychoicetitle">
                    <ul>
                        <li><a href="">최근본상품(0)</a>&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="">찜한상품(5)</a></li>
                    </ul>
                </div>
                <div>
                    <ul id="mychoiceproduct">
                        <li >
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품1.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품13.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품15.jpg"></div>
                                <div class="productbrand">ADIDAS</div>
                                <div class="productname">OZELLE</div>
                                <div class="productprice">
                                    <div><del>99000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">59000원</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품8.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FILASPLINE SCRIPT</div>
                                <div class="productprice">
                                    <div><del>49000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">29000원</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div id="buy">
                <div id="buytitle">
                    구매상품
                </div>
                <div>
                    <ul id="buyproduct">
                        <li >
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품1.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품13.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품15.jpg"></div>
                                <div class="productbrand">ADIDAS</div>
                                <div class="productname">OZELLE</div>
                                <div class="productprice">
                                    <div><del>99000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">59000원</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품8.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FILASPLINE SCRIPT</div>
                                <div class="productprice">
                                    <div><del>49000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">29000원</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>


            <div id="sell">
                <div id="selltitle">
                    판매상품
                </div>
                <div>
                    <ul id="sellproduct">
                        <li >
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품1.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품13.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FIRECRACKER</div>
                                <div class="productprice">
                                    <div><del>79000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">49000원</div>

                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품15.jpg"></div>
                                <div class="productbrand">ADIDAS</div>
                                <div class="productname">OZELLE</div>
                                <div class="productprice">
                                    <div><del>99000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">59000원</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href = "">
                                <div class="productimg"><img src="../img/mypage/상품8.jpg"></div>
                                <div class="productbrand">FILA</div>
                                <div class="productname">FILASPLINE SCRIPT</div>
                                <div class="productprice">
                                    <div><del>49000원</del>&nbsp;->&nbsp;</div>                                     
                                    <div class="discountprice">29000원</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div id="request">
                <div></div>
                <div></div>
            </div>

        </div>
    </div>   
<%@ include file="../layout/footer.jsp"%>
</body>
</html>