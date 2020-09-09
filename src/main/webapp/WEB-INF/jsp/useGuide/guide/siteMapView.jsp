<%
/**************************************************************************************************************************
* Program Name  : Q&A JSP  
* File Name     : qnaView.jsp
* Comment       : 
* History       : 네이버시스템 2018-01-29
*
**************************************************************************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- LBDMS 사이트맵 영역 -->
<div id="siteMapArea" style="display:none;">
	<div class="info">
		<div class="siteMap">
			<div class="site">
				<h1>나의 데이터</h1>
				<ul>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/myData/myDataCreate'">데이터 생성</li>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/myData/myDataManagement'">데이터 관리</li>
				</ul>
			</div>
			<div class="site">
				<h1>데이터 분석</h1>
				<dl>
					<dt onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/analysisMain'">기초 분석</dt>
					<dd class="mt10" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/boundary'">경계 분석</dd>
					<dd onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/voronoi'">보로노이 다이어그램</dd>
					<dt onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/analysisMain'">응용 분석</dt>
					<dd class="mt10" onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/buffer'">버퍼 분석</dd>
					<dd onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/location'">입지 계수</dd>
					<dd onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/spatial'">공간자기상관 분석</dd>
					<dd onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/setting/operation'">데이터 간 연산 분석</dd>
					<dt onclick="javascript:location.href='${pageContext.request.contextPath}/view/analysis/analysisGuide'">활용 사례</dt>
				</dl>
			</div>
			<div class="site">
				<h1>공유 게시판</h1>
				<ul>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/shareBoard/shareBoardMain'">공유 게시판</li>
				</ul>
			</div>
			<div class="site">
				<h1>내 정보</h1>
				<ul>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/member/myPageMain'">회원 정보 관리</li>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/member/myPageGroup'">그룹정보</li>
				</ul>
			</div>
			<div class="site">
				<h1>이용안내</h1>
				<ul>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/guide'">서비스 이용 가이드</li>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/qna'">Q&A </li>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/faq'">FAQ</li>
					<li onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/notice'">공지사항 </li>
				</ul>
			</div>
		</div>
	</div>
</div>