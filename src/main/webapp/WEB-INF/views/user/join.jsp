<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="../css/style.css">
  <!-- <link rel="stylesheet" href="../css/reset.css"> -->
  <title>회원가입</title>
</head>

<body>  
  <div class="join-wrapper">
    <h3><img src="../img/greenshoeslogo.png"></h3>
    <form action="" method="" id="join-form">

      <input type="text" name="username" placeholder="이름 입력">

      <div class="info_id">
        <input type="text" name="userid" placeholder="아이디 입력(6~20자)">
        <button>중복 확인</button>
      </div>
      <input type="text" name="pwd" placeholder="비밀번호 입력(문자,숫자,특수문자 포함 8~20자)">
      <input type="text" name="pwd_check" placeholder="비밀번호 확인">
      <input type="text" name="bir" placeholder="년, 월, 일 8자리 입력 (예: 20181020)" maxlength="8" >
      <span id="phone1"><input type="text" name="phone" placeholder="휴대폰 번호 입력('-'제외 11자리 입력)" maxlength="11"></span>
      <button id="phone_check">인증번호 요청</button>


      <div class="info_email">
        <input type="text" name="email" placeholder="이메일 주소"> @
        <input type="text" name="email02" id="email02" disabled value="">

        <select style="font-size:15px" class="email_num" name="select_Email" id="select_Email">
          <option value="1">직접입력</option>
          <option value="naver.com" selected>naver.com</option>
          <option value="hanmail.net">hanmail.net</option>
          <option value="gmail.com">gmail.com</option>
        </select>

      </div>


      <label for="remember-check">
        <input type="checkbox" id="remember-check" name="remember-check">&nbsp;[필수] 만 14세 이상이며 모두 동의합니다.
      </label><br><br>
      <label for="remember-check2">
        <input type="checkbox" id="remember-check2" name="remember-check2">&nbsp;[선택] 광고성 정보 수신에 모두 동의합니다.
      </label>
      <input type="submit" value="회원 가입" onclick="">
      <a href="로그인.html">로그인으로 가기</a>
    </form>
  </div>
  
  

  <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript">
    //이메일 입력방식 선택
    $('#select_Email').change(function () {
      $("#select_Email option:selected").each(function () {

        if ($(this).val() == '1') { //직접입력일 경우
          $("#email02").val('');                        //값 초기화
          $("#email02").attr("disabled", false); //활성화
        } else { //직접입력이 아닐경우
          $("#email02").val($(this).text());      //선택값 입력
          $("#email02").attr("disabled", true); //비활성화
        }
      });
    });
  </script>


 <%@ include file="../layout/footer.jsp"%>
</body>

</html>