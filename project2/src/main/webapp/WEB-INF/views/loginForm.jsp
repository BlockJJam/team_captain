<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<script>
	$(document)
			.ready(
					function() {
						$("#btnIdSearch")
								.on(
										"click",
										function() {
											var popupX = (document.body.offsetWidth / 2) - (200 / 2);
											var popupY= (window.screen.height / 2) - (300 / 2);
											window.open("search.do",
															"PopupWin",
															'status=no, height=300, width=200, left='+ popupX + ', top='+ popupY);
										});

						$("#btnLogout")
								.on(
										"click",
										function() {
											reloadForm.action = "${pageContext.request.contextPath}/logout";
											reloadForm.submit();
										});

						$("#btnSign")
								.on(
										"click",
										function() {
											reloadForm.action = "${pageContext.request.contextPath}/signUp/signUpView";
											reloadForm.submit();
										});

						$("#btnLogin")
								.on(
										"click",
										function() {
											var userId = $("#user_id").val();
											var userPw = $(
													"#user_login_password")
													.val();
											var data = $("#form1").serialize();
											if (userId == "") {
												alert("아이디를 입력하세요.");
												$("#user_id").focus(); // 입력포커스 이동
												return; // 함수 종료
											}
											if (userPw == "") {
												alert("비밀번호 입력하세요.");
												$("#user_login_password")
														.focus();
												return;
											}
											$
													.ajax({
														type : "post",
														url : "${pageContext.request.contextPath}/loginCheck",
														data : {
															"user_id" : $(
																	"#user_id")
																	.val(),
															"user_password" : $(
																	"#user_login_password")
																	.val()
														},
														async : false,
														success : function(msg) {
															if (msg.result == 3) {
																console
																		.log("Server Success");
																reloadForm.user_id.value = msg.loginInfo.user_id;
																reloadForm.user_kr_name.value = msg.loginInfo.user_kr_name;
																reloadForm.action = "${pageContext.request.contextPath}/home";
																reloadForm
																		.submit();
															} else if (msg.result == 1) {

																alert("아이디 또는 비밀번호를 잘못입력하셨습니다. ");
															} else {
																alert("로그인 시도횟수 초과했습니다. ");
															}
														},
														error : function(msg) {
															console
																	.log("Server Network Error ... ? ");
														}
													});
										});

					});
</script>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body id="loginFormBody">
	<c:choose>
		<c:when test="${empty loginInfo.user_kr_name}">
			<!-- 로그인이 안되어 있으면 -->
			<form class="form-inline my-2 my-lg-0" name="form1" method="post">
				<table>
					<tr>
						<td align="right">
							<!-- ID 입력 --> <input class="form-control mr-sm-2" name="user_id"
							id="user_id" type="text" placeholder="ID"
							onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID'">
							<!-- PASSWORD 입력 --> <input class="form-control mr-sm-2"
							type="password" name="user_login_password"
							id="user_login_password" placeholder="PASSWORD"
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'PASSWORD'"> <!-- 로그인버튼 -->
							<button type="button" id="btnLogin"
								class="btn btn-danger">로그인</button>
							<button type="button" id="btnIdSearch"
								class="btn btn-link">계정찾기</button>
							<button type="button" id="btnSign"
								class="btn btn-link">회원가입</button>

						</td>
						<td></td>
					</tr>
				</table>

			</form>

		</c:when>
		<c:otherwise>
			<div><a>${loginInfo.user_kr_name}</a>님 환영합니다.&nbsp&nbsp
						<button type="button" id="btnLogout"
							class="btn btn-danger"	>로그아웃</button></div>
		
		</c:otherwise>
	</c:choose>
	<form id="reloadForm" method="post">
		<input type="hidden" id="user_id" name="user_id"> <input
			type="hidden" id="user_kr_name" name="user_kr_name">
	</form>
</body>
</html>

