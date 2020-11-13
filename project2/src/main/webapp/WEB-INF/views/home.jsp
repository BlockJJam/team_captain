<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

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
<link rel="shortcut icon" href="resources/assets/images/logo/favicon.png"
   type="image/x-icon">
<%@ include file="commons/_header.jsp" %>
<!-- CSS Files -->
<link rel="stylesheet" href="resources/assets/css/animate-3.7.0.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome-4.7.0.min.css">
<link rel="stylesheet" href="resources/assets/css/bootstrap-4.1.3.min.css">
<link rel="stylesheet" href="resources/assets/css/owl-carousel.min.css">
<link rel="stylesheet" href="resources/assets/css/jquery.datetimepicker.min.css">
<link rel="stylesheet" href="resources/assets/css/style.css">
</head>
<body>
   <!-- Preloader Starts -->
   <div class="preloader">
      <div class="spinner"></div>
   </div>
   <!-- Preloader End -->

   <!-- Header Area Starts -->
<%@ include file="commons/_header.jsp" %>
   <header class="header-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-2">
               <div class="logo-area">
                  <a href="index.html"><img src="resources/assets/images/logo/logo.png"
                     alt="logo"></a>
               </div>
            </div>
            <div class="col-lg-10">
               <div class="custom-navbar">
                  <span></span> <span></span> <span></span>
               </div>
               <div class="main-menu">
                  <ul>
                     <li class="active"><a href="index.html">home</a></li>
                     <li><a href="about.html">about</a></li>
                     <li><a href="menu.html">menu</a></li>
                     <li><a href="#">blog</a>
                        <ul class="sub-menu">
                           <li><a href="blog-home.html">Blog Home</a></li>
                           <li><a href="blog-details.html">Blog Details</a></li>
                        </ul></li>
                     <li><a href="contact-us.html">contact</a></li>
                     <li><a href="elements.html">Elements</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </header>
   <!-- Header Area End -->

  <!-- Body Login End -->
   <section class="banner-area text-center">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <%@ include file="login.jsp" %>
            </div>
         </div>
      </div>
   </section>
   <!-- Body Login End -->
	

   <!-- Javascript -->
   <script src="resources/assets/js/vendor/jquery-2.2.4.min.js"></script>
   <script src="resources/assets/js/vendor/bootstrap-4.1.3.min.js"></script>
   <script src="resources/assets/js/vendor/wow.min.js"></script>
   <script src="resources/assets/js/vendor/owl-carousel.min.js"></script>
   <script src="resources/assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
   <script src="resources/assets/js/vendor/jquery.nice-select.min.js"></script>
   <script src="resources/assets/js/main.js"></script>
</body>
</html>