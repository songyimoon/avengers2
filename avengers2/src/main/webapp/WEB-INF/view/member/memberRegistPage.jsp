<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regist Page</title>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<style type="text/css">
* {
	font-family: 'Montserrat', sans-serif;
	text-decoration: none;
	list-style: none;
	padding: 0px;
	margin: 0px;
	color: #000;
}

.error_box {
	font-size: 60%;
	margin-bottom: 8px;
	margin-left: 5px;
	margin-top: 20px;
}

#error_text {
	color: red;
}

.web {
	width: 100%;
	height: 100%;
	background-color: #f5f6f7;
}

.container {
	width: 500px;
	height: 1300px;
	margin: auto;
	top: 0px;
}

.logo {
	width: 100%;
	height: 200px;
	font-family: 'Montserrat', sans-serif;
	font-weight: bold;
	font-size: 250%;
	text-align: center;
	line-height: 240px;
}

.regist_box {
	width: 100%;
	height: 950px;
}

.input_box {
	display: block;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 110px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
}

.box_local {
	text-align: center;
	position: relative;
	width: 100%;
	height: 51px;
	border: solid 1px #dadada;
	padding: 10px 40px 10px 14px;
	background: #fff;
	box-sizing: border-box;
	vertical-align: top;
	justify-content: flex-end;
}

.input {
	display: block;
	position: relative;
	float: left;
	width: 100%;
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	box-sizing: border-box;
	z-index: 10;
	*position: absolute;
	*top: 0;
	*left: 0;
	apperance: none;
	-webkit-apperance: none;
	width: 100%;
}

.input_Post {
	display: block;
	position: relative;
	width: 90%;
	height: 29px;
	padding-right: 25px;
	line-height: 29px;
	border: none;
	background: #fff;
	font-size: 15px;
	box-sizing: border-box;
	z-index: 10;
	*position: absolute;
	*top: 0;
	*left: 0;
	apperance: none;
	-webkit-apperance: none;
}

.text_box {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
}

.btn {
	display: block;
	width: 50%;
	padding: 15px 0 15px;
	font-size: 18px;
	font-weight: 700;
	text-align: center;
	cursor: pointer;
	box-sizing: border-box;
	margin-top: 20px;
	background-color: #404040;
	color: #fff;
}

.btn_box {
	width: 100%;
	height: 80px;
	line-height: 29px;
	border: none;
	text-align: center;
	display: flex;
	position: relative;
	justify-content: flex-end;
	float: left;
}

.localbtn {
   display: inline-block;
   float: right;
   position: absolute;
   top: 13px;
   right: 20px;
   border-radius: 3px;
   width:60px;
    background-color: #404040;
    border: none;
    color:#fff; 
    text-align: center;
    text-decoration: none;
    font-size: 12px;
    padding: 2px;
    margin: 4px;
    cursor: pointer;
}

.footer {
	padding-top: 95px;
	padding-bottom: 15px;
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
}

#copyright {
	font-family: none;
}

.box1 {
	display: flex;
}
</style>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//??? ??????????????? ????????? ?????? ?????? ????????? ?????? ????????? ??????, ???????????? ???????????? ???????????? ????????? ????????? ???????????? ????????? ???????????????.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

						// ????????? ????????? ?????? ????????? ?????? ????????? ????????????.
						// ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
						var roadAddr = data.roadAddress; // ????????? ?????? ??????
						var extraRoadAddr = ''; // ?????? ?????? ??????

						// ??????????????? ?????? ?????? ????????????. (???????????? ??????)
						// ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
						if (data.bname !== '' && /[???|???|???]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// ???????????? ??????, ??????????????? ?????? ????????????.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// ??????????????? ?????? ????????? ?????? ????????? ?????????.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;

						// ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// ???????????? '?????? ??????'??? ????????? ??????, ?????? ???????????? ????????? ?????????.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(?????? ????????? ?????? : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script>
</head>
<body>
	<div class="web">
		<form:form action="memjoin" name="frm" method="post"
			modelAttribute="memberCommand">
			<div class="container">
				<div class="logo">
					<a href="main">2nd shop</a>
				</div>
				<div class="regist_box">

					<div class="box1">
						<div class="text_box">?????????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memId" />
						</div>
					</div>

					<span class="input_box">
						<input type="text" name="memId" class="input" value="${registInfo.memId }" placeholder="????????? ???????????????,??????, ???????????? ???????????? 5 ~ 12???">
					</span>

					<div class="box1">
						<div class="text_box">????????????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPw" />
						</div>
					</div>
					<span class="input_box"> <input type="password" name="memPw"
						class="input" value="${registInfo.memPw }" placeholder="??????, ??????, ???????????? ?????? 8~15?????? ??????">
					</span>

					<div class="box1">
						<div class="text_box">???????????? ??????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPwCon" />
						</div>
					</div>
					<span class="input_box"> <input type="password"
						name="memPwCon" class="input" value="${registInfo.memPwCon }" >
					</span>
					<div class="box1">
						<div class="text_box">??????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memName" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memName"
						class="input" value="${registInfo.memName }">
					</span>
					<div class="box1">
						<div class="text_box">?????????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memNick"/>
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memNick"
						class="input" value="${registInfo.memNick }" placeholder="2 ~ 10???">
					</span>
					<div class="box1">
						<div class="text_box">????????????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPostNumber" />
						</div>
					</div>
					<div class="box_local">
						<span class="input_box_locals"> <input type="text"
							name="memPostNumber" id="sample4_postcode" readonly="readonly"
							class="input_Post" value="${registInfo.memPostNumber }" placeholder="????????? ??????????????????">
						</span> <input type="button" class="localbtn" value="????????????"
							onclick="avascript:sample4_execDaumPostcode()" />
					</div>

					<div class="box1">
						<div class="text_box">??????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memAddr" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memAddr"
						class="input" id="sample4_roadAddress" value="${registInfo.memAddr }" placeholder="????????? ??????????????????">

					</span>

					<div class="text_box">????????????</div>
					<span class="input_box"> <input type="text"
						name="memDetailAdd" class="input" value="${registInfo.memDetailAdd }" placeholder="???????????? ??????">
					</span>
					<div class="box1">
						<div class="text_box">?????????</div>
						<div class="error_box">
							<form:errors id="error_text" path="memPhone" />
						</div>
					</div>
					<span class="input_box"> <input type="text" name="memPhone"
						class="input" value="${registInfo.memPhone }">
					</span>

					<div class="btn_box">
						<input type="button" class="btn" value="?????? ??????"
							onclick="javascript:location.href='main'" />
						<button type="submit" class="btn" onclick="valid(this.form)">?????? ??????</button>
					</div>
					<div class="footer">
						<span id="copyright">Copyright ?? 2nd shop All Rights
							Reserved.</span>
					</div>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>