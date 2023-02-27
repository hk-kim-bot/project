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
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/event.css"> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle&display=swap" rel="stylesheet">
</head>
<body>    
    <div class="banner">
        <ul class="bannerimgs">
            <li class="bannerimg"><a href=""><img src="/img/eventbanner.png"></a></li>
            <li class="bannerimg"><a href=""><img src="/img/eventbanner2.png"></a></li>
            <li class="bannerimg"><a href=""><img src="/img/eventbanner3.png"></a></li>
            <li class="bannerimg"><a href=""><img src="/img/eventbanner4.png"></a></li>
        </ul>        
    </div>
    <div id="container">        
        <div id="eventboard">
            <div id="eventboardnotice">
                <table class="board_list">
                    <caption>이벤트 공지사항</caption>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>글쓴이</th>
                            <th>작성일</th>
                            <th>조회</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="notice">
                            <td></td>
                            <td class="tit"><a href="">공지사항</a></td>
                            <td>관리자</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr class="notice">
                            <td></td>
                            <td class="tit"><a href="">공지사항</a></td>
                            <td>관리자</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td class="tit"><a href="">제목1</a></td>
                            <td>노민종</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td class="tit"><a href="">제목2</a></td>
                            <td>노민종</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td class="tit"><a href="">제목3</a></td>
                            <td>노민종</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td class="tit"><a href="">제목4</a></td>
                            <td>노민종</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td class="tit"><a href="">제목5</a></td>
                            <td>노민종</td>
                            <td>2022-12-07</td>
                            <td>123</td>
                        </tr>                        
                    </tbody>
                </table>
            </div>
            <div id="eventboardnotice2">
                <div id="eventboardnotic2conatainer">
                    <div id="eventboardnotice2title">멤버십회원 특별혜택</div>
                    <div id="membership">
                        <ul>
                            <li>회원가입 시 5000원할인쿠폰 지급</li>
                            <li>회원가입 시 5000포인트 적립 </li>
                            <li>구매 시 결제금액의 1%적립</li>
                            <li>생일 해당월 1만원 할인쿠폰 지급</li>
                            <li>후기 작성시 최대 1500포인트 적립</li>                            
                        </ul>                        
                    </div>                 
                    <button>멤버십 회원가입</button>                 
                </div>
            </div>
        </div>         
        <div id="collabo">
            <div id="collabohead">제휴할인 ★ 할인쿠폰받기</div>
                <div class="collabotitle">제휴할인</div>
                    <div id="collabocontent">
                        <div><a href=""><img src="/img/collabo/collabo1.jpg"></a></div>
                        <div><a href=""><img src="/img/collabo/collabo2.jpg"></a></div>
                        <div><a href=""><img src="/img/collabo/collabo3.jpg"></a></div>
                        <div><a href=""><img src="/img/collabo/collabo4.jpg"></a></div>
                    </div>
                <div class="collabotitle">할인쿠폰받기</div>
                    <div id="coupon">
                        <div><img src="/img/쿠폰1.png"></div>
                        <div><img src="/img/쿠폰2.png"></div>
                        <div><img src="/img/쿠폰3.png"></div>
                        <div><img src="/img/쿠폰4.png"></div>
                    </div>
        </div>
        <div id="eventhead">EVENT ★ 이벤트</div>
        <div id="eventnav">
            <ul>
                <li><a href="">진행중인 이벤트</a></li>
                <li><a href="">지난 이벤트</a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>                           
            </ul>
        </div>
        
        <div id="item">
            <ul>
                <li>
                    <div class="item"><img src="/img/이벤트1.png"></div>
                    <div class="itemdetail">12월 출석체크</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트2.png"></div>
                    <div class="itemdetail">12월 카카오페이 할인 이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트3.png"></div>
                    <div class="itemdetail">12월 토스할인 이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트4.png"></div>
                    <div class="itemdetail">12월 BEST리뷰 이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트5.png"></div>
                    <div class="itemdetail">[LIVE예고]겨울 아우터 역대급 할인 예고</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트6.png"></div>
                    <div class="itemdetail">100%당첨 컨버스 룰렛 이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트7.png"></div>
                    <div class="itemdetail">블랙데이 행운의 잭팟</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트8.png"></div>
                    <div class="itemdetail">블랙데이 에어팟 맥스 경품이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>
                <li>
                    <div class="item"><img src="/img/이벤트9.png"></div>
                    <div class="itemdetail">하나투어 상품권 이벤트</div>
                    <div class="eventday">2022.12.01-2022.12.31</div>
                </li>  
            </ul>
            <div class="search2">
                <form>
                    <input id="searchbar2"type="text">
                    <input id="searchbutton2" type="submit" value="검색">
                </form>
            </div>    
            <div class="paging">
                <a href="" class="bt">첫 페이지</a>
                <a href="" class="bt">이전 페이지</a>
                <a href="" class="num">1</a>
                <a href="" class="num">2</a>
                <a href="" class="num">3</a>
                <a href="" class="num">4</a>
                <a href="" class="num">5</a>                
                <a href="" class="bt">다음 페이지</a>
                <a href="" class="bt">마지막 페이지</a>            
            </div>
        </div>

        <div id="usercon">
            <div id="usercontenttitle">회원 참여 이벤트</div>
            <div id="usercontent">                
                <div id="depth1"><img src="/img/usercon/usercon1.jpg"></div>
                <div id="depth2">
                    <div id="depth3">
                        <div id="depth3first"><img src="/img/usercon/usercon2.jpg"></div>
                        <div id="depth3second"><img src="/img/usercon/usercon3.jpg"></div>
                    </div>
                    <div id="depth4">
                        <div id="depth4first"><img src="/img/usercon/usercon4.jpg"></div>
                        <div id="depth4second"><img src="/img/usercon/usercon5.jpg"></div>
                    </div>
                </div>                
            </div> 
            <div id="userconmore">
                <button>더 보기</button>
            </div>      
        </div>    
    </div>
    <footer>
        푸터부분
    </footer>    

    <script>

        let img = document.querySelectorAll(".bannerimg");
        let totalslide = img.length;
        
        var sliderWidth = 100; // container의 width
        var slideIndex = 0;
        var slider = document.querySelector('.bannerimgs');
        slider.style.width = sliderWidth * totalslide + '%';
    
        slide()
    
        function slide(){
          for(var i =0;i<totalslide;i++){
            slider.style.left = -(sliderWidth * slideIndex) + '%';  
            console.log(slideIndex) 
          }
          slideIndex++;
          if(slideIndex === totalslide){
            slideIndex=0;
          } 
          setTimeout(slide, 2000); 
        }
    </script>    
</body>
</html>