<%@page import="javax.websocket.Session"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ include file="/WEB-INF/etc/common.jspf"%>
<script type="text/javascript" src="/js/mainpage.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body, h1, h2, h3, h4, h5 {
	font-family: "Poppins", sans-serif
}

body {
	font-size: 16px;
}

.w3-half img {
	margin-bottom: -6px;
	margin-top: 16px;
	opacity: 0.8;
	cursor: pointer
}

.w3-half img:hover {
	opacity: 1
}
</style>
<style>
    .menu a{cursor:pointer;}
    .menu .hide{display:none;}
</style>
<script>
	// Script to open and close sidebar
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}
	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}
	// Modal Image Gallery
	function onClick(element) {
		document.getElementById("img01").src = element.src;
		document.getElementById("modal01").style.display = "block";
		var captionText = document.getElementById("caption");
		captionText.innerHTML = element.alt;
	}
	$(document).ready(function(){
	    $(".menu>a").click(function(){
	        var submenu = $(this).next("ul");
	        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
	        if( submenu.is(":visible") ){
	            submenu.slideUp();
	        }else{
	            submenu.slideDown();
	        }
	    }).mouseover(function(){
	        $(this).next("ul").slideDown();
	    });
	});
</script>
<div class="col-sm-8 text-left">
	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>
	<div class="w3-main">
		<!-- HardWare Architecture-->
		<div class="w3-row-padding" id="product" style="margin-top: 25px; text-align: center;">

			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project plan</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>린캔버스 작업 진행" src="img/start/00_a.png" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/start/01_a.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>프로젝트 개요 및 기간 등 설정">
			</div>
			<div class="w3-half">
				<img src="img/start/01_b.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>프로젝트에 대한 범위 설정">
				<img src="img/start/01_c.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>프로젝트에 대한 범위 설정">
				<br/><br/><br/><br/>
			</div>		
			
			
			
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project of time</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>프로젝트 진행 기간" src="img/devel/0x.PNG" 
				style="width: 100%"	onclick="onClick(this)">
			</div>
			<div class="w3-half">
				<img src="img/devel/1x.PNG" style="width: 100%"
					onclick="onClick(this)" alt="<br/>프로젝트 진행 일정">
				<br/><br/><br/><br/>
			</div>		
			
			

			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project Architecture</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>칸반모델 기반 차트" src="img/diagram/00.gogo1.png" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/diagram/01.full.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>소프트웨어 및 웹어플리케이션 설계도">
				<img src="img/diagram/03.hardware.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>자전거 하드웨어 설계도">
			</div>
			<div class="w3-half">
				<img src="img/diagram/00.gogo2.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>OMG 방법론 수립 표준">
				<img src="img/diagram/02.usecase.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>JRider 유스케이스">
				<img src="img/diagram/04.db.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>데이터베이스 설계도">
				<br/><br/><br/><br/>
			</div>			


			
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>HardWare Architecture</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>자이로스코프센서 하드웨어 설계도" src="img/hardware/scope.png" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/hardware/onsep.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>온습도센서 하드웨어 설계도">
				<img src="img/hardware/motor.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>모터센서 하드웨어 설계도">
			</div>
			<div class="w3-half">
				<img src="img/hardware/lid.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>리드스위치 하드웨어 설계도">
				<img src="img/hardware/led.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>LCD, lED, 부저, 초음파 센서 하드웨어 설계도">
				<img src="img/hardware/becorn.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>블루투스 비콘 하드웨어 설계도">
				<br/><br/><br/><br/>
			</div>
			
			
			
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project Progress</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>1주차 1차 프로젝트 설계 및 디자인 등 작업 진행" src="img/devel/00.png" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/devel/02.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>3주차 2차 안드로이드 등 모듈 작업 진행">
			</div>
			<div class="w3-half">
				<img src="img/devel/01.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>2주차 1차 모듈 작업 진행">
				<img src="img/devel/03.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>4주차 전체 모듈 단일화 및 서버 작업 진행">
				<br/><br/><br/><br/>
			</div>
			
			

			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project progression</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>현재 스프링 프레임워크로 서버딴 작성중입니다." src="img/ing/min.jpg" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/ing/won.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>현재 안드로이드 스튜디오 어플리케이션 유지보수중입니다.">
				<img src="img/ing/jun.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>현재 하드웨어 통합작업 진행중입니다.">
			</div>
			<div class="w3-half">
				<img src="img/ing/bae.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>현재 라즈베리파이 Python 모듈 작업중입니다.">
				<img src="img/ing/hwan.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>현재 홈페이지 디자인 이미지 도트 작업중입니다.">
				<img src="img/ing/jin.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>현재 노드클라이언트 작업중입니다.">
				<br/><br/><br/><br/>
			</div>
			
			
			
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Intermediate inspection video</b>
			</h1>
			<div>
				<video style="width: 100%;" src="img/movie/v0.mp4" poster="img/movie/vv.png" controls>
					first video
				</video>
				<video style="width: 100%;" src="img/movie/vi2.mp4" poster="img/movie/vv2.png" controls>
					second video
				</video>
				<br/><br/><br/><br/>
			</div>
			

			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project used technique</b>
			</h1>
			<div class="w3-half">
				<img alt="<br/>라즈베리파이 & 아두이노 (시리얼 통신, 블루투스 통신 , Python, C ) : 클라이언트는 따로 나눔<br/><br/>
					전방기능<br/>
					
					리드시위치를 이용하여 바퀴 회전수를 통해 이동거리 및 속도 구현 (블루투스 통신)<br/>
					자이로스코프 센서를 이요하여 좌우측 각도 전달 시리얼 통신)<br/>
					카메라 센서를 이용하여 현재 접속 친구와 영상 스트리밍 구현 (소켓통신)<br/>
					블루투스 비콘을 사용하여 이벤트 쿠폰 발행 기능 구현 (블루투스통신)<br/><br/>
					
					리드스위치, 자이로스코프센서, 초음파센서, LED센서, 온습도 센서는 C GPIO제어 기능 모듈화를 통해서 파이썬으로 제어 <br/>
					그 외 센서는 모두 파이썬만을 사용하여 제어<br/>
					<br/>
					후방기능<br/>
					초음파 센서를 이용하여 후방 위험 감지시 LED, Buzzer 로 경고 기능 구현 (소켓통신)<br/>
					위험경고 신호를 받아 후방 카메라로 후방 위험 정보 스트리밍 구현 (소켓통신)<br/>
					모터를 이용하여 잠금장치 기능 구현 (소켓통신)<br/>
					좌우측 각도 전달을 받아 후방 LCD 방향 표시 기능 구현 (소켓통신)<br/>
					온습도 센서를 사용하여 날씨 정보 연동" src="img/eng/raspi.png" 
					style="width: 100%;" onclick="onClick(this)">
				<img src="img/eng/android.png" style="width: 100%"
					onclick="onClick(this)" 
					alt="<br/>안드로이드 (Android, FCM)<br/><br/>
					로그인 기능 구현 (소켓통신)<br/>
					회원가입 기능 구현 (소켓통신)<br/>
					게시판 등의 서버 페이지 기능 사용 구현 (소켓통신)<br/>
					GoogleAPI를 사용하여 현재 경로 , 이동경로 , 추천경로 기능 구현<br/>
					친구추가 및 목록 기능 구현<br/>
					온습도 센서의 정보를 제어하여 OpenWeatherAPI 날씨 정보 기능 구현 (소켓통신)<br/>
					FCM을 사용하여 메시징 처리<br/>
					안드로이드 원클릭 잠금 설정 및 해제 기능 구현 (추가 비밀번호 포함)<br/>
					실시간 클라이언트 서버 정보 수신 (소켓통신, 블루투스 통신)<br/>
					클라이언트 위험정보를 통해 카메라 스트리밍 기능 구현 (소켓통신)<br/>
					<br/><br/>
					안드로이드 화면에 싫시간 정보 업데이트 및 어탭터를 통해 화면처리">
			</div>
			<div class="w3-half">
				<img src="img/eng/nodejs.png" style="width: 100%"
					onclick="onClick(this)" alt="<br/>클라이언트 서버 (Flask, Nodejs, Python, MongoDB)<br/><br/>
						로그인 기능 구현<br/>
						실시간 로그 정보 기능 구현<br/>
						카메라 스트리밍 정보 확인 기능 구현<br/>
						<br/>
						JSON을 사용하여 MongoDB에 저장된 실시간 정보 중 주요정보 스프링 서버로 전달">
				<img src="img/eng/springf.png" style="width: 100%"
					onclick="onClick(this)" 
					alt="<br/>스프링 서버 (SPRING5.0, Maven1.8, Tomcat9.0, JAVA 1.8, MyBatis3.4, Oracle 11g)<br/><br/>
						로그인 기능 구현<br/>
						회원가임 기능 구현<br/>
						일반 사용자 관리 기능 구현 (원클릭 사용자 일정기간정지, 삭제 등 )<br/>
						게시판 기능 구현 ( QnA, 커뮤니티, 공지사항)<br/>
						댓글, 게시판 다시달기 기능 구현<br/><br/>
						
						로그 관리 기능 구현 (각 클라이언트 별 중요정보 데이터 통신 및 관리 – Flask Nodejs 클라이언트와 공유)<br/>
						JSP, HTML5, CSS3, JQuery, JavaScript, Bootstrap을 사용한 디자인<br/><br/>
						
						스프링 타일즈를 사용한 화면 분할 처리<br/>
						인터셉터를 이용하여 로그인, 회원가입 등 전처리 검사<br/>
						스프링 시큐리티 추후 추가 예정"><br/>
					<br/><br/><br/><br/>
			</div>
			
			
			
			
			
			

			
			<!-- 라즈베리파이&아두이노 소스 작성용 -->
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project Raspi&Arduino Source</b>
			</h1>
			<div>
				<img src="img/source/ardu_rasp.jpg" width="100%;" height="150px;">
			</div>
			<br/>
			<div class="w3-half">
				<img src="img/source_rasp/00.jpg" style="width: 100%" ondblClick="lcd()"> 
				<img src="img/source_rasp/01.jpg" style="width: 100%" ondblClick="back_module()"> 
				<img src="img/source_rasp/02.jpg" style="width: 100%" ondblClick="lid()"> 
				<img src="img/source_rasp/03.jpg" style="width: 100%" ondblClick="back_module()"> 
				<img src="img/source_rasp/04.jpg" style="width: 100%" ondblClick="motor()"> 
			</div>
			<div class="w3-half">
				<img src="img/source_rasp/15.jpg" style="width: 100%"> 
				<img src="img/source_rasp/06.jpg" style="width: 100%" ondblClick="jairo()"> 
				<img src="img/source_rasp/07.jpg" style="width: 100%" ondblClick="ap_camera()"> 
				<img src="img/source_rasp/08.jpg" style="width: 100%" ondblClick="chou()"> 
				<img src="img/source_rasp/09.jpg" style="width: 100%" ondblClick="who_camera()"> 
				<br/><br/><br/><br/>
			</div>			
			
			
			
			<!-- 안드로이드 소스 작성용 -->
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Project Android Source</b>
			</h1>
			<div>
				<img src="img/source/and.png" width="100%;" height="150px;">
			</div>
			<br/>
			<div class="w3-half">
				<img src="img/source_and/button.jpg" style="width: 100%" ondblClick="button()"> 
				<img src="img/source_and/camera.jpg" style="width: 100%" ondblClick="camera()"> 
				<img src="img/source_and/change.jpg" style="width: 100%" ondblClick="adapt()"> 
				<img src="img/source_and/facebook.jpg" style="width: 100%" ondblClick="login()"> 
			</div>
			<div class="w3-half">
				<img src="img/source_and/googleapi.jpg" style="width: 100%" ondblClick="gps()"> 
				<img src="img/source_and/lock.jpg" style="width: 100%" ondblClick="lock()"> 
				<img src="img/source_and/sokdo.jpg" style="width: 100%" ondblClick="sokdo()"> 
				<img src="img/source_and/weather.jpg" style="width: 100%" ondblClick="weather()"> 
				<br/><br/><br/><br/>
			</div>	
			
			
			
			<!-- 플라스크와 스프링 소스 작성용 -->
			<h1 class="w3-xxxlarge w3-text-grey">
				<b>Flask&Spring Framework</b>
			</h1>
			<div>
				<img src="img/source/spfl.png" width="100%;" height="150px;">
			</div>
			<br/>
			<div class="w3-half">
				<img src="img/source_flask/flask.png" style="width: 100%;" height="300px;" ondblClick="222222()"> 
			</div>
			<div class="w3-half">
				<img src="img/source_spring/sp.png" style="width: 100%" height="300px;" ondblClick="spring2()"> 
				<br/><br/><br/><br/>
			</div>				
			
									
		</div>
		
		<!-- Modal for full size images on click-->
		<div id="modal01" class="w3-modal w3-black" style="padding-top: 0"
			onclick="this.style.display='none'">
			<span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
			<div
				class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
				<img id="img01" class="w3-image">
				<p id="caption"></p>
			</div>
		</div>
	</div>
</div>
<script>
	function check(){
		if(win.document.readyState=='complete'){
			win.document.execCommand("SaveAs");
			win.close();
		} else {
			window.setTimeout("check();",1000);
		}
	};
	function lcd() {
		win = window.open('img/txt/lcd.zip','win');
		window.setTimeout('check();',1000);
	};
	function back_module() {
		win = window.open('img/txt/back_module.zip','win');
		window.setTimeout('check();',1000);
	};
	function chou() {
		win = window.open('img/txt/choumpa.zip','win');
		window.setTimeout('check();',1000);
	};
	function jairo() {
		win = window.open('img/txt/jairo.zip','win');
		window.setTimeout('check();',1000);
	};
	function who_camera() {
		win = window.open('img/txt/camera_a.zip','win');
		window.setTimeout('check();',1000);
	};
	function ap_camera() {
		win = window.open('img/txt/camera.zip','win');
		window.setTimeout('check();',1000);
	};
	function motor() {
		win = window.open('img/txt/motor.zip','win');
		window.setTimeout('check();',1000);
	};
	function lid() {
		win = window.open('img/txt/lid.zip','win');
		window.setTimeout('check();',1000);
	};
// 	function 1() {
// 		win = window.open('img/txt/camera.py','win');
// 		window.setTimeout('check();',1000);
// 	}

	function adapt() {
		win = window.open('img/down/adapt.zip','win');
		window.setTimeout('check();',1000);
	};
	function camera() {
		win = window.open('img/down/camera.zip','win');
		window.setTimeout('check();',1000);
	};
	function gps() {
		win = window.open('img/down/gps.zip','win');
		window.setTimeout('check();',1000);
	};
	function lock() {
		win = window.open('img/down/lock2.zip','win');
		window.setTimeout('check();',1000);
	};
	function login() {
		win = window.open('img/down/login.zip','win');
		window.setTimeout('check();',1000);
	};
	function button() {
		win = window.open('img/down/button.zip','win');
		window.setTimeout('check();',1000);
	};
	function sokdo() {
		win = window.open('img/down/sokdo2.zip','win');
		window.setTimeout('check();',1000);
	};
	function weather() {
		win = window.open('img/down/weather2.zip','win');
		window.setTimeout('check();',1000);
	};
	
	// node랑 spring
	function node2() {
		win = window.open('img/source_flask/node_client.zip','win');
		window.setTimeout('check();',1000);
	};
	
	function spring2() {
		win = window.open('img/source_spring/chotBike_server_m.zip','win');
		window.setTimeout('check();',1000);
	};
</script>