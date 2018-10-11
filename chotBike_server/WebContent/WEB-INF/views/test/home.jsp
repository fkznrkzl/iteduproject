<%@page import="javax.websocket.Session"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ include file="/WEB-INF/etc/common.jspf"%>
<script type="text/javascript" src="/js/mainpage.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<title>JRiderHome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins">

<div class="col-sm-8 text-left">
	<h1 style="text-align: center;">Welcome to JRider HomePage</h1><br/><br/>
	<p>Introduce Our Special Projects, We made JRider IOT product.
		We like bike, but that's very dangerous than normal car
		So we think Special product, that's JRider IOT product
		<br/>
		First, To detect the danger of rear jeopardy, the ultrasonic wave sensor 
		was used to communicate with the mobile phone application.
		<br/>
		Second, Warnings and LED signals were used simultaneously 
		with the buzzer sensor at the same time.
		<br/>
		Third, Using the gyro sensor, the direction of the LCD was 
		marked according to the direction of the bicycle handle.
		<br/>
		Fourth, The distance travelled was checked using the lead switch.
		<br/>
		Fifth, Using the GPS GPS API, the navigation function was maked to further 
		utilize the moving distance, recommended routes, etc.
		<br/>
		Sixth, camera streaming via a friend list, camera streaming via a sensing danger
		<br/>
		Seventh, Automatic lock function using motor control
		<br/>
		Last, Drive Battle Team with Game Function, Ranking from Ranking,
		Added functions such as measuring calories consumption, checking weight changes, 
		and checking the weather information.
		</p>
	<hr>
			<!-- The Team -->
		<div class="w3-row-padding w3-grayscale">
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/jung_minyoung.jpg" alt="minyoung" style="width: 100%">
					<div class="w3-container">
						<h3>minyoung</h3>
						<p class="w3-opacity">CEO & Full Stack Developer</p>
						<p>
						birth : 1992.09.20 <br>
						blood groups : A <br>
						hobby : korean chess <br>
						place : Dobong<br> 
						personality : activity
						</p>
					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/lee_junho.jpg" alt="junho" style="width: 100%">
					<div class="w3-container">
						<h3>junho</h3>
						<p class="w3-opacity">Full Stack Developer</p>
						<p>
						birth : 1994.05.04 <br>
						blood groups : O <br>
						hobby : lecture <br>
						place : Nambusunhwan<br> 
						personality : gentle
						</p>
					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/wonjong.jpg" alt="wonjong" style="width: 100%">
					<div class="w3-container">
						<h3>wonjong</h3>
						<p class="w3-opacity">C & Android Developer</p>
						<p>
						birth : 1992.02.09 <br>
						blood groups : O <br>
						hobby : sex <br>
						place : Guro <br> 
						personality : activity
						</p>
					</div>
				</div>
			</div>
		</div>


		<!-- The Team -->
		<div class="w3-row-padding w3-grayscale">
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/bae_kyunglak.jpg" alt="kyunglak" style="width: 100%">
					<div class="w3-container">
						<h3>kyunglak</h3>
						<p class="w3-opacity">Android Developer</p>
						<p>
						birth : 1991.09.11 <br>
						blood groups : AB <br>
						hobby : jaxx <br>
						place : Ilsan<br> 
						personality : activity
						</p>
					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/kim_hywanjo.jpg" alt="hywanjo" style="width: 100%">
					<div class="w3-container">
						<h3>hywanjo</h3>
						<p class="w3-opacity">Designer & Android Developer</p>
						<p>
						birth : 1991.03.03 <br>
						blood groups : A <br>
						hobby : sports <br>
						place : Inchon<br> 
						personality : prudent
						</p>
					</div>
				</div>
			</div>
			<div class="w3-col m4 w3-margin-bottom">
				<div class="w3-light-grey">
					<img src="img_team/youngjin.jpg" alt="Mike" style="width: 100%">
					<div class="w3-container">
						<h3>youngjin</h3>
						<p class="w3-opacity">Hardware Engineer</p>
						<p>
						birth : 1990.04.23 <br>
						blood groups : A <br>
						hobby : cook <br>
						place : Guro <br> 
						personality : activity
						</p>
					</div>
				</div>
			</div>
		</div>
	<!-- <p>Lorem ipsum... ${sessionScope['user_id']}</p> -->
</div>
<%-- <c:if test="${msg == 'success'}"> --%>
<%-- 	<h2>${sessionScope['user_id']}(${sessionScope.user_id})님환영합니다.</h2> --%>
<%-- </c:if> --%>
