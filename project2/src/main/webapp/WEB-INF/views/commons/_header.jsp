<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required Meta Tags -->
<%@ include file="pbljsp.jsp"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/logo/favicon.png"
	type="image/x-icon">


</head>
<body>
	
		<!-- Header Area Starts -->
		
		
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<a href="${pageContext.request.contextPath}/home"><img
						src="${pageContext.request.contextPath}/resources/assets/images/logo/logo.png"
						alt="logo"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link"
								href="${pageContext.request.contextPath}/home">Home <span
									class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/noticeList"> Notice
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle"
								href="${pageContext.request.contextPath}/bbslist"
								id="navbarDropdown" role="button" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> Board </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item"
										href="${pageContext.request.contextPath}/bbslist">전체보기</a>
									<c:forEach var="dept" items="${list1 }">
										<a class="dropdown-item"
											href="${pageContext.request.contextPath}/goDeptbbs?dept_seq=${dept.dept_seq }">${dept.dept_name }</a>
									</c:forEach>
								</div></li>
							<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/info/userListView">
									User Management </a></li>
						</ul>
						<%@ include file="../loginForm.jsp"%>

					</div>
				</nav><!-- Header Area End -->
</body>
</html>
