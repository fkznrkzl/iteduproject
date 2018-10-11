<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<head>
<title>JRider 관리자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/css.css" type="text/css">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/chotrider/">JRider</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">사용자관리
							<!-- ${sessionScope.user_id } --></a></li>
					<li><a href="user_log">사용자로그</a></li>
					<li><a href="/chotrider/community">커뮤니티</a></li>
					<li><a href="notice">공지사항</a></li>
					<li><a href="history">History</a></li>
					<li><a href="#">QnA</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><a href="login" id="id"> <span
							class="glyphicon glyphicon-log-in"></span> Login
					</a> <c:if test="${sessionScope.user_id != null}">
							<script>
								$(document).ready(function() {
									$("#id").hide();
								});
							</script>
							<a href="logout" id="id2"> <span
								class="glyphicon glyphicon-log-out"></span> Logout
							</a>
						</c:if></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/chotrider/bike_user_enter" id="id3"> <span
							class="glyphicon glyphicon-log-out"></span>  회원가입
							<c:if test="${sessionScope.user_id != null}">
							<script>
								$(document).ready(function() {
									$("#id3").hide();
								});
							</script>
							</c:if>
					</a>
				</ul>
			</div>
		</div>
	</nav>