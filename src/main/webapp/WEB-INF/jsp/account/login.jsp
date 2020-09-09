<%
/**************************************************************************************************************************
* Program Name  : 로그인 JSP  
* File Name     : login.jsp
* Comment       : 
* History       : 네이버시스템 2018-01-29
*
**************************************************************************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Top Include -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>SGIS pro</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login/login.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/js/plugins/dialog/dialog.css" />	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/dialog/dialog.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/aes/AesUtil.js"></script> 
	<script src="${pageContext.request.contextPath}/js/plugins/aes/aes.js"></script> 
	<script src="${pageContext.request.contextPath}/js/plugins/aes/pdkdf2.js"></script>
	<script src="${pageContext.request.contextPath}/js/common/common.js"></script>
    <script src="${pageContext.request.contextPath}/js/account/login.js"></script>
</head>

<body>
	<div class="wrap">
			<div class="loginWrap">
				<div class="login">
					<img src="${pageContext.request.contextPath}/img/login/login.png" alt=""/>
					<div id="loginBox" class="loginArea" >
						<ul class="loginForm" >
							<li>
								<select name="loginType" id="loginType">
										<option value="normal" selected>일반</option>
										<option value="ubis">UBIS</option>
								</select>
								<input type="text"  id="id" name="id"  value="" placeholder="아이디" tabindex="1" onkeyup="javascript:$input.keyValidation(event, this, 'id');" />
								<input type="password"  id="pwd" name="pwd" value="" placeholder="비밀번호" tabindex="2" />
								<button id="login" >로그인</button>
							</li>
						</ul>
						<div style="margin-top:20px;margin-left:110px;font-weight:bold;font-size:12px;">
						일반 : 지자체 및 공공기관, 통계데이터센터 등
						</div>
						<div style="margin-top:10px;margin-left:110px;font-weight:bold;font-size:12px;">
						UBIS : 통계청사용자
						</div>
						<div style="margin:0 auto;margin-top: 40px;">
							<ul class="loginMember mt15">
							<li><span id="register">회원가입</span></li>
							<li><span id="idFind">아이디 찾기</span></li>
							<li><span id="pwFind">비밀번호 찾기</span></li>
							<li><span id="terms">이용 약관</span></li>						
						</ul>
						</div>						
					</div>
				</div>
			</div>
			
			<!-- 회원가입-->
			<jsp:include page="/view/auth/signUp"></jsp:include>
			
			<!-- 이용약관-->
			<jsp:include page="/view/auth/terms"></jsp:include>
			
			<!-- 아이디/비밀번호 찾기-->
			<jsp:include page="/view/auth/findIdAndPwd"></jsp:include>
			
		</div><!-- wrap end-->
</body>
</html>