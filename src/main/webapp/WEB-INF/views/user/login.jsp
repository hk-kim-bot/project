<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/style.css">
  <title>login</title>
</head>
<body>
  <div class="login-wrapper">

    <h3><img src="../img/greenshoeslogo.png"></h3>
    <form action="" method="" id="login-form">
      <input type="text" name="userid" id="userid" size="30" placeholder="아이디를 입력해주세요">
      <input type="password" name="pwd" id="pwd" size="30" placeholder="비밀번호를 입력해주세요">
      
      <label for="remember-check">
       <input type="checkbox" name="remember-check" id="remember-check">&nbsp;아이디 저장
      </label>
      <input type="submit" value="로그인" size="50">
      
    </form>
    <div class="join">
    <ul>
      <li class="look_box"><a href="" class=look_link>아이디 찾기</a></li>
      <li>|</li>
      <li class="look_box"><a href="/user/join" class=look_link>회원 가입</a></li>
    </ul>
  </div>
    <div class="social_login">
 
      
      <!-- <button type="button" class="btn btn_login_naver full outline" data-v-6e799857="" data-v-b02d33c2="">
        <svg xmlns="http://www.w3.org/2000/svg" class="logo-social icon sprite-icons" data-v-b02d33c2="">
          <use href="/_nuxt/e80865ef2b867a9c4fd8b0619cd8b394.svg#i-logo-naver" xlink:href="/_nuxt/e80865ef2b867a9c4fd8b0619cd8b394.svg#i-logo-naver" data-v-b02d33c2="">
          </use>
        </svg> "네이버 로그인"  
      </button>  
      <button type="button" class="btn btn_login_naver full outline" data-v-6e799857="" data-v-b02d33c2="">
        <svg xmlns="http://www.w3.org/2000/svg" class="logo-social icon sprite-icons" data-v-b02d33c2="">
          <use href="/_nuxt/e80865ef2b867a9c4fd8b0619cd8b394.svg#i-logo-naver" xlink:href="/_nuxt/e80865ef2b867a9c4fd8b0619cd8b394.svg#i-logo-naver" data-v-b02d33c2="">
          </use>
        </svg> "카카오 로그인"  
      </button>   -->


      <!-- <button type="button" class="btn btn_login_naver full outline">
        <img src="../btn/2021_Login_with_naver_guidelines_Kr/[크기변환]btnG_완성형.png">
      </button> -->

    
    </div>

  </div>
  <%@ include file="../layout/footer.jsp"%>
</body>
</html>

