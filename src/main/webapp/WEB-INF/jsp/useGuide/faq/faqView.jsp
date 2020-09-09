<%
/**************************************************************************************************************************
* Program Name  : FAQ JSP  
* File Name     : notice.jsp
* Comment       : 
* History       : 네이버시스템 2018-01-29
*
**************************************************************************************************************************/
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="${pageContext.request.contextPath}/js/useGuide/faq/faqView.js"></script>

<!-- FAQ 영역 -->
<script>
   		$(document).ready(
			function() {
			 	var type = "${post_no}";
				console.log(type);
		});
 </script>
    
<div id="faqArea"  style="display:none;">
	<div id="faqListView">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>FAQ</h1>
				<h2>SGIS pro FAQ입니다. 이용에 참고하세요.</h2>
			</div>						
		</div>
		<div class="searchArea">
			<select id="faqSearchSelectBox">
				<option value="title" selected>제목</option>
				<option value="content">내용</option>
				<option value="total">제목+내용</option>
			</select>
			<input id="faqSearchText" type="text" style="width:500px;"/>
			<button id="faqSearchBtn" style="width:90px;">검색</button>
		</div>
		<div id="faqTable"></div>
		<div class="pageArea">
			<span id="faqPage"  class="pages"></span>
		</div>
	</div>
</div>
