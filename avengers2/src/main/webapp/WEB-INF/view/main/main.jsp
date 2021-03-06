<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>main page</title>
<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	list-style: none;
	text-decoration: none;
	color: #000;
	margin: 0;
	padding: 0;
}
.web {
	width: 100%;
	height: 100%;
}
.web {
	width: 100%;
	height: 100%;
}

.body {
	max-width: 1200px;
	display: flex;
	height: 1300px;
	margin: auto;
}

.left_bar {
	height: 1200px;
	width: 250px;
}

.logo {
	background-color: #fff;
	height: 150px;
	width: 100%;
	text-align: center;
	line-height: 150px;
}

#logo_text {
	font-family: 'Montserrat', sans-serif;
	font-size: 300%;
}

.category {
	width: 100%;
	height: 500px;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: relative;
	background-color: #F9F9F9;
	min-width: 160px;
	padding: 8px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown:hover .dropdown-content {
	display: block;
}

#menu_text {
	font-family: 'Montserrat', sans-serif;
	font-size: 150%;
	cursor: pointer;
	display: block;
	width: 250px;
	height: 50px;
	padding-top: 12px;
	padding-left: 32px;
}

li {
	padding: 5px;
	font-family: 'Montserrat', sans-serif;
	font-size: 130%;
}

li a {
	display: block;
}

.dropdown-content a:hover {
	font-weight: bolder;
}

.right_bar {
	width: 950px;
	height: 1200px;
}

.header {
	height: 240px;
	width: 100%;
}

.headmenu {
	width: 950px;
	height: 120px;
}

.top_menu {
	display: flex;
	width: 100%;
	margin: auto;
	height: 86px;
	padding-top: 10px;
}

.nav {
	display: flex;
	justify-content: flex-end;
	line-height: 86px;
	background-color: #fff;
}

.nav li {
	margin-left: 84px;
}

.nav li a:hover {
	font-weight: bolder;
}

.nav li a {
	color: #000;
}

.search {
	width: 100%;
	height: 120px;
	padding-top: 20px;
}

.search_area {
	float: right;
	width: 300px;
	height: 40px;
	background: rgba(0.0 .0 .0 .5);
	border-radius: 5px;
	margin-top: 24px;
}

.search_area form input {
	border: none;
	border-bottom: solid 1px;
	background: rgba(0, 0, 0, 0.0);
	width: 250px;
	height: 40px;
	color: #000;
	padding-left: 15px;
}

.search_area form span {
	width: 50px;
	color: #000;
	font-weight: bold;
	cursor: pointer;
}

.banner {
	width: 100%;
	height: 400px;
	background-image: url("images/2nd.png");
	background-size: 100% 400px;
}
.products {
	width: 950px;
	height: 600px;
}
td {
	padding: 10px;
	text-align: center; 
}

.ellipsis_multi {
	font-family: 'Montserrat', sans-serif;
	font-size: 15px;
	overflow:hidden;
	text-overflow:ellipsis;
	display:-webkit-box;
	-webkit-line-clamp:2; /* ????????? */
	-webkit-box-orient:vertical;
	word-wrap:break-word;
	line-height:18px;
	height:36px; /* height = line-height * ?????? : ???wekkit ?????? */
}

</style>
</head>
<body>
	<div class="">
		<div class="body">
			<div class="left_bar">
				<div class="logo">
					<span id="logo_text"><a href="main">2nd shop</a></span>
				</div>
				<div class="category">
					<div class="dropdown">
						<span id="menu_text">Bags</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage/1">all</a></li>
								<li><a href="productListPage2">cross/shoulder bag</a></li>
								<li><a href="productListPage/12">clutch/pouch bag</a></li>
								<li><a href="productListPage/13">tote bag</a></li>
								<li><a href="productListPage/14">belt bag</a></li>
								<li><a href="productListPage/15">bucket bag</a></li>
								<li><a href="productListPage/16">backpack</a></li>
								<li><a href="productListPage/17">suitcase</a></li>
								<li><a href="productListPage/18">etc</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">Shoes</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage">all</a></li>
								<li><a href="productListPage">heels</a></li>
								<li><a href="productListPage">flat</a></li>
								<li><a href="productListPage">sandal/slippers</a></li>
								<li><a href="productListPage">boots</a></li>
								<li><a href="productListPage">loafer</a></li>
								<li><a href="productListPage">dress shoes</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">Jewelry</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage">all</a></li>
								<li><a href="productListPage">bracelet</a></li>
								<li><a href="productListPage">brooch/pin</a></li>
								<li><a href="productListPage">earring</a></li>
								<li><a href="productListPage">necklace</a></li>
								<li><a href="productListPage">ring</a></li>
							</ul>
						</div>
					</div>
					<div class="dropdown">
						<span id="menu_text">BRAND</span>
						<div class="dropdown-content">
							<ul>
								<li><a href="productListPage">SAINT LAURENT</a></li>
								<li><a href="productListPage">PRADA</a></li>
								<li><a href="productListPage">BURBERRY</a></li>
								<li><a href="productListPage">GUCCI</a></li>
								<li><a href="productListPage">MAISON MARGIELA</a></li>
								<li><a href="productListPage">BOTTEGA VENETA</a></li>
								<li><a href="productListPage">VALENTINO</a></li>
								<li><a href="productListPage">BALENCIAGA</a></li>
								<li><a href="productListPage">LOUIS VUITTON</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="right_bar">
				<div class="header">
					<div class="search">
						<div class="search_area">
							<form>
								<input type="search" placeholder="search"> <span>??????</span>
							</form>
						</div>
					</div>
					<div class="headmenu">
						<c:if test="${empty authinfo }">
							<ul class="nav">
								<li><a href="loginPage">LOGIN</a></li>
								<li><a href="memberRegistPage">REGIST</a></li>
								<li><a href="noticePage">NOTICE</a></li>
							</ul>
						</c:if>
						<c:if test="${!empty authinfo }">
							<c:if test="${authinfo.grade == 1 }">
							<ul class="nav">
								<li><a href="myPage">MYPAGE</a></li>
								<li><a href="productRegisterPage">SELL ITEMS</a></li>
								<li><a href="noticePage">NOTICE</a></li>
								<li><a href="login/logout">LOGOUT</a></li>
							</ul>
							</c:if>
							<c:if test="${authinfo.grade != 1 }">
							<ul class="nav">
								<li><a href="memberListPage">MEMBER LIST</a></li>
								<li><a href="reportPage">REPORT</a></li>
								<li><a href="noticePage">NOTICE</a></li>
								<li><a href="login/logout">LOGOUT</a></li>
							</ul>
							</c:if>
						</c:if>
					</div>
				</div>
				<div class="banner"></div>
				<div class="products">
					<table width="950">
						<tr>
							<c:forEach items="${productsList }" var="dto" varStatus="cnt">
								
								<td width="200px">
									<a href="prodDetailPage?prodNum=${dto.prodNum }">  
									<c:if test="${dto.prodImage != null }">
									<img width="200" height="200" src="upload/${dto.prodImage }" /><br/>
									</c:if>
									
									<p class="ellipsis_multi">${dto.prodName }</p><br/>
									<p class="ellipsis_multi">${dto.prodPrice }???</p></a>
									 
								</td>
								<c:if test="${cnt.count % 4 == 0 }">
									</tr><tr>
								</c:if>
								
							</c:forEach>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../include/includeFooter.jsp" %>
		</div>
	</div>
</body>
</html>