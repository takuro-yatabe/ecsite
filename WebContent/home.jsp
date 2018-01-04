<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(document).ready(function() {
		$('.allcamera').bxSlider({
			auto : true,
			mode : 'fade',
			speed : 1000,
			slideWidth : 400

		});

	});
</script>
<title>Home画面</title>

<style type="text/css">
body {
	text-align: center;
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========TEMPLATE LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 1px solid #333;
	position: relative;
	top: 80%;
}

#header {
	width: 100%;
	height: 80px;
	background-color: black;
}

#main {
	width: 500px;
	margin: 0 auto;
	text-align: center;
}

#footer {
	/* width: 100%;
	height: 80px;
	background-color: black;
	clear: both; */

}

#text-center {
	display: inline-block;
	text-align: center;
}

#HomeAction_0 {
	display: inline-block;
	text-decoration: none;
	color: #fff;
	width: 80px;
	height: 80px;
	line-height: 80px;
	border-radius: 50%;
	border: solid 2px #fff;
	text-align: center;
	vertical-align: middle;
	overflow: hidden;
	font-weight: bold;
	transition: .4s;
}

#HomeAction_0.btn {

}

#UserCreateAction_0 {
	display: inline-block;
	text-decoration: none;
	color: #fff;
	width: 80px;
	height: 80px;
	line-height: 80px;
	border-radius: 50%;
	border: solid 2px #fff;
	text-align: center;
	vertical-align: middle;
	overflow: hidden;
	font-weight: bold;
	transition: .4s;
}

.allcamera {
	width: 400px;
	height: 300px;
	text-align: center;
}

.bx-wrapper {
	text-align: center;
	margin: 0 auto;
}

.action {
	text-align: center;
	position: relative;
	top: 20px;
}

.newuser {
	text-align: center;
	position: relative;
	top: 20px;
}

img {
	width: 400px;
	height: 300px;
}

.button {
	text-align: center;
}

.message {
	text-align: center;
	position: relative;
	top: 30px;
}

.logo {
	color: #fff;
	font-size: 25px;
}

ul {
	float: right;
	line-height: 40px;
	color: #fff;
}

li {
	float: left;
	list-style: none;
	padding-right: 20px;
	color: white;
	font-size: 18px;
	position:relative;
	bottom:5px;
}
a:link {
color : #fff;
}
a:visited {
color : #fff;
}

</style>
</head>
<body>
	<div id="header">
		<div class="logo">中古カメラ</div>
		<ul>
			<li><a href="buyItem.jsp">商品一覧</a></li>
			<li><a href="myPage.jsp">マイページ</a></li>
			<li><a href="inquiry.jsp">お問い合わせ</a></li>
		</ul>
		<div id="pr"></div>
	</div>
	<div id="main">
		<div class="allcamera">
			<div><img src="image/camera1.jpg" alt="camera1"></div>
			<div><img src="image/camera2.jpg" alt="camera2"></div>
			<div><img src="image/camera3.jpg" alt="camera3"></div>
		</div>
	</div>

	<!-- <img class="camera1" src="image/449A9618.jpg" alt="camera"> -->
	<!-- <div id="top">
			<p>Home</p>
		</div> -->

	<!-- <div id="text-center"> -->
		<div class="button">
		<s:form action="HomeAction" class="action">
			<s:submit class="btn" value="LOGIN" />
		</s:form>
		<s:form action="UserCreateAction" class="newuser">
			<s:submit class="btn" value="NEWUSER" />
		</s:form>
		</div>
		<s:if test="#session.id != null">
			<p class="message">
				ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a>
			</p>
		</s:if>
	<!-- </div> -->

	<div id="footer">
		<div id="pr"></div>
	</div>
	<%-- 	<script type="text/javascript" src="script.js"></script>
 --%>
</body>
</html>