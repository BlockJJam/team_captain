<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required Meta Tags -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Page Title -->
<title>Foodfun</title>

<!-- Favicon -->
<link rel="shortcut icon" href="resources/images/logo/favicon.png"
   type="image/x-icon">

<!-- CSS Files -->
<link rel="stylesheet" href="resources/css/animate-3.7.0.css">
<link rel="stylesheet" href="resources/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet" href="resources/css/owl-carousel.min.css">
<link rel="stylesheet" href="resources/css/jquery.datetimepicker.min.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
   <!-- Preloader Starts -->
   <div class="preloader">
      <div class="spinner"></div>
   </div>
   <!-- Preloader End -->
   <!-- Header Starts -->
	<%@ include file="commons/_header.jsp" %>
	<!-- Header End -->
   <!-- Banner Area Starts -->
   <section class="banner-area text-center">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <h6>the most interesting food in the world</h6>
               <h1>
                  Discover the <span class="prime-color">flavors</span><br> <span
                     class="style-change">of <span class="prime-color">food</span>fun
                  </span>
               </h1>
            </div>
         </div>
      </div>
   </section>
   <!-- Banner Area End -->

<table>
		<tr>
			<td width="50px" align="center">id</td>
			<td align="center">email</td>
			<td align="center">phone</td>
		</tr>
		<!-- result는 contoller의 addObject로 부터 가져온다. -->
		<c:forEach items="${result}" var="member">
			<tr>
				<td>${member.name}</td>
				<td>${member.email}</td>
				<td>${member.phone}</td>
			</tr>
		</c:forEach>
	</table>

   <!-- Javascript -->
   <script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
   <script src="resources/js/vendor/bootstrap-4.1.3.min.js"></script>
   <script src="resources/js/vendor/wow.min.js"></script>
   <script src="resources/js/vendor/owl-carousel.min.js"></script>
   <script src="resources/js/vendor/jquery.datetimepicker.full.min.js"></script>
   <script src="resources/js/vendor/jquery.nice-select.min.js"></script>
   <script src="resources/js/main.js"></script>
</body>
</html>