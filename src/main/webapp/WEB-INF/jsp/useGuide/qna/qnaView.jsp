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
<script src="${pageContext.request.contextPath}/js/useGuide/qna/qnaView.js"></script>

<!-- Q&A 영역 -->
<div id="qnaArea" style="display:none;">
	<div id="qnaListView">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>Q&A</h1>
				<h2>SGIS pro Q&A입니다. 이용에 참고하세요.</h2>
			</div>
		</div>
		<div class="searchArea">
			<select id="searchType">
				<option value="title" selected>제목</option>
				<option value="content">내용</option>
				<option value="total">제목+내용</option>
				<option value="name">작성자</option>
			</select>
			<input id="searchText" type="text" style="width:500px;"/>
			<button id="btnSearch" style="width:90px;">검색</button>
			<button id="qnaWriteModeBtn" class="writeBtn">글쓰기</button>
		</div>
		<div class="QA">
			<table id="qnaTable"></table>
		</div>
		<div class="pageArea">
			<span id="qnaPage"  class="pages"></span>
		</div>
	</div>
</div>