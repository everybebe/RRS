<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='shortcut icon' type='image/x-icon' href='../images/panda.png' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@400&display=swap" rel="stylesheet">

<style type="text/css">
.footer {
	background-color: #f8f9fa;
}
.container{
	margin: auto;
}

</style>
</head>
<body>
<%
// 	String res = "회원 가입이 완료 되었습니다.";
	String res = request.getParameter("res");
	if(res.equals("1")){
		res = "회원 가입이 완료 되었습니다.";
	}
%>

<nav class="navbar navbar-expand-md navbar-light bg-light">
  <a class="navbar-brand" href="<%=request.getContextPath() %>/mainPageTest.jsp" id="bigtitle">
  	<img src="../images/로고.png"alt="tablemate.png" id="logo" style="width : 180px;
	height : 60px;">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">카테고리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">예약하기</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">로그인</a>
      </li>
    </ul>
  </div>
</nav>
<hr>

	<div class="container">
		<fieldset>
			<legend><%=res %></legend>
			<p>저희 Table Mate 회원이 되신걸 진심으로 환영합니다.</p>
			<a href="<%=request.getContextPath()%>/member/view/loginTest.jsp">
				<input type="button" value="로그인 하기">
			</a>
			<a href="<%=request.getContextPath()%>/mainPageTest.jsp">
				<input type="button" value="홈페이지 가기">
			</a>
		</fieldset>
	</div>

<%@include file="../../footer.jsp"%>
</body>
</html>