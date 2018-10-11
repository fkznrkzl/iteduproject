<%@page import="javax.websocket.Session"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ include file="/WEB-INF/etc/common.jspf"%>
<script type="text/javascript" src="/js/mainpage.js"></script>
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
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
</script>
<script>
var imagepath = "img/log/"
	NewImg = new Array (
	"lock_on.jpg",
	"lock_off.jpg"
	);
	var ImgNum = 0;
	var ImgLength = NewImg.length - 1;
	var delay = 2000; //자동전환시 시간설정(1000=1초)
	var lock = false;
	var run;
	function chgImg(direction) {
	    if (document.images) {
	        ImgNum = ImgNum + direction;
	    if (ImgNum > ImgLength) {
	        ImgNum = 0;
	    }
	    if (ImgNum < 0) {
	        ImgNum = ImgLength;
	    }
	    document.slideshow.src = imagepath+NewImg[ImgNum];
	   }
	}
	function auto() {
	    if (lock == true) {
	        lock = false;
	        window.clearInterval(run);
	    }
	    else if (lock == false) {
	        lock = true;
	        run = setInterval("chgImg(1)", delay);
	   }
	}
</script>
<script>
/*
$(document).ready(function () {
	alert($('a').attr("href"));
	$('img:first').mouseover(function () {
		$(this).attr("src","img/log/lock_on.jpg");
	});
 	$('img:first').mouseover(function () {
 		$(this).attr("src","img/log/lock_off.jpg");
	});
});
*/
</script>
<div class="col-sm-8 text-left">
	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()"
		style="cursor: pointer" title="close side menu" id="myOverlay"></div>
	<div class="w3-main">
		<!-- Product -->
		<div class="w3-row-padding" id="product" style="margin-top: 25px; text-align: center;">
			<div class="w3-half">
				<img alt="<br/>자이로스코프센서 하드웨어 설계도" src="img/log/ride2.jpg" 
				style="width: 100%"	onclick="onClick(this)"> 
				<img src="img/log/change.jpg" style="width: 100%"
					.onclick="onClick(this)" alt="<br/>온습도센서 하드웨어 설계도">
			</div>

			<div class="w3-half rollover" onload="auto()">
				<img src="img/log/lock_on.jpg" onmouseover="this.src='img/log/lock_on.jpg';" onmouseout="this.src='img/log/lock_off.jpg';" style="width: 100%"
					onclick="onClick(this)" alt="<br/>리드스위치 하드웨어 설계도">
				<img src="img/log/danger.jpg" style="width: 100%"
					onclick="onClick(this)" alt="<br/>LCD, lED, 부저, 초음파 센서 하드웨어 설계도">
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
