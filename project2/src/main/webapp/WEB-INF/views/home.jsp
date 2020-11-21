<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="commons/_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- Page Title -->
<title>Tongyang Systems</title>

</head>


<body id="homeBody">
<article id="BigWrap">       

        <section align="center">
        
            <h1>TONGYANG SYSTEMS</h1>
            <br>
            <p>
                더 나은 동양 시스템즈, 더 나은 미래를 만들겠습니다. <br>
                성장하는 동양시스템즈 
            </p>
            <dl>
                <dt>Team Captain </dt>
                <br>
                <dd>Jung hyunseok</dd>   
                <dd>Cho sunwoo</dd> 
                <dd>Joo jaemin</dd> 
                <dd>Ji yoonjae</dd>  
            </dl>
        </section>
        <div id="videoEle"></div>
</article>
</body>
<script>
  var BV = new $.BigVideo({useFlashForFirefox:false, container:$('#videoEle')});
  BV.init();
  
    BV.show(
      { type: "video/mp4",  src: "../resources/assets/images/home_video.mp4", doLoop:true },
      { type: "video/webm", src: "../resources/assets/images/home_video.webm", doLoop:true },
      { type: "video/ogg",  src: "../resources/assets/images/home_video.ogv", doLoop:true }
    );
    BV.getPlayer().volume(30);
  
</script>
</html>