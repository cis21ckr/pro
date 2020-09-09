<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page trimDirectiveWhitespaces="true"%> --%>
<!DOCTYPE html>
<!-- <html> -->
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeSearch.js"></script>	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header/header.css" />
	<script>
		var href = location.href;
		var userdiv = "<%=session.getAttribute("user_div")%>";
		if (href.indexOf('/sysmgt/') > 0 || href.indexOf('/prjMng/') > 0 || href.indexOf('/collectData/') > 0 || href.indexOf('/userSdcMng') > 0) {
			document.write('<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/all.css">');
		}
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/chart.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/ui.js" type="text/javascript"></script>
</head>
<!-- <body> -->
	<!-- <div class="wrap"> -->
		<div class="topWrap">
			<div class="topBox">
				<div class="top">
					<script>
					if (href.indexOf('/sysmgt/') > 0 || href.indexOf('/prjMng/') > 0 || href.indexOf('/collectData/') > 0) {
							document.write("<div class=\"toplogo\" onclick=\"javascript:location.href='${pageContext.request.contextPath}/view/sysmgt/systemSts'\" style=\"cursor:pointer;\"><img src=\"${pageContext.request.contextPath}/img/common/logo_lbdms.png\" alt=\"logo\"/></div>");
					} else {
						if (href.indexOf('/index') > 0) {
							<%if (session.getAttribute("user_div") != null && (session.getAttribute("user_div").toString().equalsIgnoreCase("d") || session.getAttribute("user_div").toString().equalsIgnoreCase("o") || session.getAttribute("user_div").toString().equalsIgnoreCase("a"))) {%>
								document.write("<div class=\"toplogo\" onclick=\"javascript:location.href='${pageContext.request.contextPath}/view/sysmgt/systemSts'\" style=\"cursor:pointer;\"><img src=\"${pageContext.request.contextPath}/img/common/logo_lbdms.png\" alt=\"logo\"/></div>");
							<%} else {%>
								document.write("<div class=\"toplogo\" onclick=\"javascript:location.href='${pageContext.request.contextPath}/view/index'\" style=\"cursor:pointer;\"><img src=\"${pageContext.request.contextPath}/img/common/logo.png\" alt=\"logo\"/></div>");
							<%}%>
						} else {
							document.write("<div class=\"toplogo\" onclick=\"javascript:location.href='${pageContext.request.contextPath}/view/index'\" style=\"cursor:pointer;\"><img src=\"${pageContext.request.contextPath}/img/common/logo.png\" alt=\"logo\"/></div>");
						}
					}
					</script>	
					<div class="topM">
						<div class="topAdmin">
							<ul data-tooltip-text="회원정보 및 그룹 관리로 이동합니다.">
								<li class="admin" id="myPageMain"  title="회원정보 관리로 이동합니다." onclick="javascript:location.href='${pageContext.request.contextPath}/view/member/myPageMain'" style="cursor:pointer"></li>
								<%if (session.getAttribute("user_div") != null && !session.getAttribute("user_div").toString().equalsIgnoreCase("s")) {%>
								<li class="group" id="myPageGroup" title="그룹 관리로 이동합니다." onclick="javascript:location.href='${pageContext.request.contextPath}/view/member/myPageGroup'" style="cursor:pointer"></li>
								<%}%>
								<li><%=session.getAttribute("user_nm") %> 님</li>
								<li id="user_id" style="display:none;"><%=session.getAttribute("user_id") %></li>
								<li id="" style="display:none;"><%=session.getAttribute("ubis_yn") %></li>
							</ul>
							<button onclick = "location.href ='${pageContext.request.contextPath}/view/auth/logout'"  tabindex="8">로그아웃</button>
						</div>
						<div class="topMenu">
							<ul>
							<%if (session.getAttribute("user_div").toString().equalsIgnoreCase("s") && session.getAttribute("user_id").toString().equalsIgnoreCase("sdc99")) {%>
								<li><a href="${pageContext.request.contextPath}/view/use/userSdcMng" tabindex="1">사용자 관리</a></li>
							<%}%>
								<li><a href="${pageContext.request.contextPath}/view/myData/myDataManagement" tabindex="4">나의 데이터</a></li>
								<li><a href="${pageContext.request.contextPath}/view/analysis/analysisMain" tabindex="5">데이터 분석</a></li>
								<li><a href="${pageContext.request.contextPath}/view/shareBoard/shareBoardMain" tabindex="6">공유 게시판</a></li>
								<li><a href="${pageContext.request.contextPath}/view/use/guideMain" tabindex="6">이용안내</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!-- topWrap end-->
		<div class="subMenuWrap">
			<div class="subMenu">
		<%if (session.getAttribute("user_div").toString().equalsIgnoreCase("s") && session.getAttribute("user_id").toString().equalsIgnoreCase("sdc99")) {%>
				<ul>
					<li>&nbsp;</li>
				</ul>
		<%}%>
				<ul>
					<li><a href="${pageContext.request.contextPath}/view/myData/myDataCreate" tabindex="41">데이터 생성</a></li>
					<li><a href="${pageContext.request.contextPath}/view/myData/myDataManagement" tabindex="42">데이터 관리</a></li>
				</ul>
				<ul>
					<li><a href="${pageContext.request.contextPath}/view/analysis/setting/boundary" tabindex="51">경계 분석</a></li>
					<li><a href="${pageContext.request.contextPath}/view/analysis/setting/voronoi" tabindex="52">보로노이 다이어그램</a></li>
					<%if (session.getAttribute("user_div") != null && !session.getAttribute("user_div").toString().equalsIgnoreCase("s")) {%>
						<li><a href="${pageContext.request.contextPath}/view/analysis/setting/buffer" tabindex="53">버퍼 분석</a></li>
					<%}%>
					<li><a href="${pageContext.request.contextPath}/view/analysis/setting/location" tabindex="54">입지계수</a></li>
					<li><a href="${pageContext.request.contextPath}/view/analysis/setting/spatial" tabindex="55">공간자기상관 분석</a></li>
					<li><a href="${pageContext.request.contextPath}/view/analysis/setting/operation" tabindex="56">데이터 간 연산 분석</a></li>
					<li><a href="${pageContext.request.contextPath}/view/analysis/analysisGuide" tabindex="57">활용사례</a></li>
				</ul>
				<ul>
					<li>&nbsp;</li>
				</ul>
				<ul>
					<li><a href="${pageContext.request.contextPath}/view/use/guideMain/guide" tabindex="71">서비스 이용 가이드</a></li>
					<li><a href="${pageContext.request.contextPath}/view/use/guideMain/qna" tabindex="72">Q&A </a></li>
					<li><a href="${pageContext.request.contextPath}/view/use/guideMain/faq" tabindex="73">FAQ</a></li>
					<li><a href="${pageContext.request.contextPath}/view/use/guideMain/notice" tabindex="74">공지사항 </a></li>
				</ul>
			</div>
		</div><!-- subMenuWrap end-->
	<!-- </div> -->