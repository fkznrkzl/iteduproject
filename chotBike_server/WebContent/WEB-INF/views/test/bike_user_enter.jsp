<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
// <![CDATA[
jQuery( function($) { // HTML 문서를 모두 읽으면 포함한 코드를 실행

   // 정규식을 변수에 할당
   // 정규식을 직접 작성할 줄 알면 참 좋겠지만
   // 변수 우측에 할당된 정규식은 검색하면 쉽게 찾을 수 있다 
   // 이 변수들의 활약상을 기대한다
   // 변수 이름을 're_'로 정한것은 'Reguar Expression'의 머릿글자
   var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식
   var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
   var re_uname = /^[a-z_-]{3,12}$/; // 이름 검사식
   var re_user_height = /^[0-9_-]{3,3}$/; // user_height 검사식
   var re_user_weight = /^[0-9_-]{2,3}$/; // 전화번호 검사식
   var re_user_birth = /^[0-9_-]{8,8}$/;
   var re_user_bike_buy_date = /^[0-9_-]{4,8}$/;
   // 선택할 요소를 변수에 할당
   // 변수에 할당하지 않으면 매번 HTML 요소를 선택해야 하기 때문에 귀찮고 성능에도 좋지 않다
   // 쉼표를 이용해서 여러 변수를 한 번에 선언할 수 있다
   // 보기 좋으라고 쉼표 단위로 줄을 바꿨다 
   var 
      form = $('.form'), 
      uid = $('#user_id'), 
      pwd = $('#user_pwd'), 
      pwdcheck = $('#inputPasswordCheck'), 
      uname = $('#user_name'), 
      user_height = $('#user_height'), 
      user_weight = $('#user_weight'),
      user_birth = $('#user_birth')
      user_bike_buy_date = $('user_bike_buy_date');
      
   // 선택한 form에 서밋 이벤트가 발생하면 실행한다
   // if (사용자 입력 값이 정규식 검사에 의해 참이 아니면) {포함한 코드를 실행}
   // if 조건절 안의 '정규식.test(검사할값)' 형식은 true 또는 false를 반환한다
   // if 조건절 안의 검사 결과가 '!= true' 참이 아니면 {...} 실행
   // 사용자 입력 값이 참이 아니면 alert을 띄운다
   // 사용자 입력 값이 참이 아니면 오류가 발생한 input으로 포커스를 보낸다
   // 사용자 입력 값이 참이 아니면 form 서밋을 중단한다
   form.submit( function() {
      if (re_id.test(uid.val()) != true) { // 아이디 검사
         alert('[ID 입력 오류] 3~16자 영문,숫자만 입력하세요');
         uid.focus();
         return false;
      } else if(re_pw.test(pwd.val()) != true) { // 비밀번호 검사
         alert('[PW 입력 오류] 6~18자 영문,숫자만 입력하세요');
         pwd.focus();
         return false;
      }  else if(re_uname.test(uname.val()) != true) { // 이메일 검사
         alert('[이름 입력 오류] 3~16자 영문만 입력하세요');
         uname.focus();
         return false;
      } else if(re_user_height.test(user_height.val()) != true) { // user_height 검사
         alert('[몸무게 입력 오류] 3자 숫자만 입력하세요');
         user_height.focus();
         return false;
      } else if(re_user_weight.test(user_weight.val()) != true) { // 전화번호 검사
         alert('[신장 입력 오류] 3자 숫자만 입력하세요');
         user_weight.focus();
         return false;
      }else if(re_user_birth.test(user_birth.val()) != true) { // user_height 검사
         alert('[생일 입력 오류] 8자 숫자만 입력하세요');
         user_birth.focus();
         return false;
      }
//       else if(re_user_bike_buy_date.test(user_bike_buy_date.val()) != true) { // user_height 검사
//          alert('[자전거 구매일 오류] 8자 숫자만 입력하세요');
//          user_bike_buy_date.focus();
//          return false;
//       }
   });
   
   // #uid, #pwd 인풋에 입력된 값의 길이가 적당한지 알려주려고 한다
   // #uid, #pwd 다음 순서에 경고 텍스트 출력을 위한 빈 strong 요소를 추가한다
   // 무턱대고 자바스크립트를 이용해서 HTML 삽입하는 것은 좋지 않은 버릇
   // 그러나 이 경우는 strong 요소가 없어도 누구나 form 핵심 기능을 이용할 수 있으니까 문제 없다
   $('#uid, #pwd').after('<strong></strong>');
   
   // #uid 인풋에서 onkeyup 이벤트가 발생하면
   uid.keyup( function() {
      var s = $(this).next('strong'); // strong 요소를 변수에 할당
      if (uid.val().length == 0) { // 입력 값이 없을 때
         s.text(''); // strong 요소에 포함된 문자 지움
      } else if (uid.val().length < 3) { // 입력 값이 3보다 작을 때
         s.text('너무 짧아요.'); // strong 요소에 문자 출력
      } else if (uid.val().length > 16) { // 입력 값이 16보다 클 때
         s.text('너무 길어요.'); // strong 요소에 문자 출력
      } else if ( re_id.test(uid.val()) != true ) { // 유효하지 않은 문자 입력 시
         s.text('유효한 문자를 입력해 주세요.'); // strong 요소에 문자 출력
      } else { // 입력 값이 3 이상 16 이하일 때
         s.text('적당해요.'); // strong 요소에 문자 출력
      }
   });
   
   // #pwd 인풋에서 onkeyup 이벤트가 발생하면
   pwd.keyup( function() {
      var s = $(this).next('strong'); // strong 요소를 변수에 할당
      if (pwd.val().length == 0) { // 입력 값이 없을 때
         s.text(''); // strong 요소에 포함된 문자 지움
      } else if (pwd.val().length < 6) { // 입력 값이 6보다 작을 때
         s.text('너무 짧아요.'); // strong 요소에 문자 출력
      } else if (pwd.val().length > 18) { // 입력 값이 18보다 클 때
         s.text('너무 길어요.'); // strong 요소에 문자 출력
      } else { // 입력 값이 6 이상 18 이하일 때
         s.text('적당해요.'); // strong 요소에 문자 출력
      }
   });
   
   // #tel 인풋에 onkeydown 이벤트가 발생하면
   // 하이픈(-) 키가 눌렸는지 확인
   // 하이픈(-) 키가 눌렸다면 입력 중단
   
});
// ]]>
</script>
<div class="col-sm-8 text-left">
   <div>
      <h3 align="center">회원가입</h3>
   </div>
   <form role="form" method="post" action="enter_user" enctype="multipart/form-data" name="bike_user" class="form">
		<div class="form-group">
			<label for="inputName">아이디</label> <input type="text"
				class="form-control" id="user_id" placeholder="아이디를 입력해 주세요" name="user_id">
		</div>
		<div class="form-group">
			<label for="inputPassword">비밀번호</label> <input type="password"
				class="form-control" id="user_pwd" placeholder="비밀번호를 입력해주세요" name="user_pwd">
		</div>
		<div class="form-group">
			<label for="inputPasswordCheck">비밀번호 확인</label> <input
				type="password" class="form-control" id="inputPasswordCheck"
				placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요" name="inputPasswordCheck">
		</div>
		<div class="form-group">
			<label for="inputName">이름</label> <input type="text"
				class="form-control" id="user_name" placeholder="이름를 입력해주세요" name="user_name">
		</div>
		<div class="form-group">
			<label for="inputHeight">키</label> <input type="text"
				class="form-control" id="user_height" placeholder="키를 입력해 주세요" name="user_height">
		</div>
		<div class="form-group">
			<label for="inputWeight">몸무게</label> <input type="text"
				class="form-control" id="user_weight" placeholder="몸무게 입력해 주세요" name="user_weight">
		</div>
		<div class="form-group">
			<label for="inputBirth">생일</label> <input type="text"
				class="form-control" id="user_birth" placeholder="생일을 입력해 주세요(ex. 19920920)" name="user_birth">
		</div>
		<div class="form-group">
			<label for="inputBikeDate">자전거 구매일</label> <input type="text"
				class="form-control" id="user_bike_buy_date" placeholder="자전거 구매일을 입력해 주세요(ex. 20171201)" name="user_bike_buy_date">
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="inputtelNO">핸드폰 번호</label> <input type="tel" -->
<!-- 				class="form-control" id="inputtelNO" placeholder="사무실번호를 입력해 주세요"> -->
<!-- 		</div> -->
		<div class="form-group">
			<label>약관 동의</label>
			<div data-toggle="buttons">
				<label class="btn btn-primary active"> <span
					class="fa fa-check"></span> <input id="agree" type="checkbox"
					autocomplete="off" checked>
				</label> <a href="#">이용약관</a>에 동의합니다.
			</div>
		</div>

		<div class="form-group text-center">
			<button type="submit" id="join-submit" class="btn btn-primary">
				회원가입<i class="fa fa-check spaceLeft"></i>
			</button>
			<button type="submit" class="btn btn-warning">
				가입취소<i class="fa fa-times spaceLeft"></i>
			</button>
		</div>
	</form>
</div>