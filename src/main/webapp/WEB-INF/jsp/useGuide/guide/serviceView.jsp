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

<!-- LBDMS 서비스 소개 영역 -->
<div id="serviceArea" style="display:none;">
	<div class="info">
		<div>
			<h1>SGIS pro 소개</h1>
			<ul>
				<li>SGIS pro는 사용자가 보유한 데이터를 위치데이터로 전환 후 복잡한 분석기법을 쉽게 활용하여<br> 합리적인 정책의사결정을 돕는 서비스입니다.</li>
			</ul>
			<div style="border-bottom: 2px solid #3d62e8;height:30px;"></div>
		</div>
		<div class="mt50">
			<h1>SGIS pro 주요 서비스 소개</h1>
			<div class="contentArea mt50">
				<div class="srvImgArea">
					<img src="${pageContext.request.contextPath}/img/guide/mydata_guide.png" alt="mydata" style="max-width: 100%;"/>
				</div>
				<div class="srvContentArea">
					<div style="width:100%;height:50px;">
						<h1 style="float:left">나의 데이터</h1>
						<button class="linkBtn" onclick="location.href='${pageContext.request.contextPath}/view/myData/myDataManagement'">서비스 바로가기</button>
					</div>
					<ul>
						<li style="font-weight: bold;">사용자가 업로드한 데이터, 전환된 위치 데이터, 공간분석 결과데이터를 종합적으로 관리할 수 있습니다.</li>
					</ul><br>
					<ul class="subContent">
						<li>- 데이터 업로드</li>
						<li>- 위치데이터로 변환</li>
						<li>- 데이터 관리</li>
					</ul>
				</div>
			</div>
			<div class="bt50" ></div>
			<div class="contentArea mt50"  style="height: 451px;">
				<div class="srvImgArea">
					<img src="${pageContext.request.contextPath}/img/guide/analysis_guide.png" alt="analysis" style="max-width: 100%;"/>
				</div>
				<div class="srvContentArea">
					<div class="linkArea">
						<h1 style="float:left">데이터 분석</h1>
						<button class="linkBtn" onclick="location.href='${pageContext.request.contextPath}/view/analysis/analysisMain'">서비스 바로가기</button>
					</div>
					<ul>
						<li style="font-weight: bold;">위치기반 데이터를 활용하여 기초공간분석과 응용공간분석에 활용할 수 있으며, 기초공간분석 결과데이터를 응용공간분석에서 활용할 수 있습니다.</li>
					</ul><br>
					<ul class="subContent">
						<li class="title">기초공간분석</li>
						<li>- 경계 분석</li>
						<li>- 보르노이 다이어그램</li><br>
						<li class="title">응용공간분석</li>
						<li>- 버퍼 분석</li>
						<li>- 입지 계수</li>
						<li>- 공간자기상관 분석</li>
						<li>- 데이터 간 연산 분석</li>
					</ul>
				</div>
			</div>
			<div class="bt50"></div>
			<div class="contentArea mt50">
				<div class="srvImgArea">
					<img src="${pageContext.request.contextPath}/img/guide/share_guide.png" alt="share" style="max-width: 100%;"/>
				</div>
				<div class="srvContentArea">
					<div class="linkArea">
						<h1 style="float:left">공유 게시판</h1>
						<button class="linkBtn" onclick="location.href='${pageContext.request.contextPath}/view/shareBoard/shareBoardMain'">서비스 바로가기</button>
					</div>
					<ul>
						<li style="font-weight: bold;">사용자가 보유한 모든 데이터를 같은 그룹 사용자들과 공유할 수 있습니다.</li>
					</ul><br>
					<ul class="subContent">
						<li>- 보유한 데이터 그룹 공유</li>
						<li>- 공유된  데이터 다운로드</li>
					</ul>
				</div>
			</div>
			
		</div>
		
		
		
		
		
		<%-- <div class="mt50">
			<h1>데이터 관리</h1>
			<ul>
				<li>나의 데이터 > 데이터 관리에서 데이터의 종류에 따라 관리할 수 있습니다.</li>
				<li>업로드한 사용자 데이터를 수정, 삭제, 복사, 다운로드, 그룹에 공유, SGIS+전송 등에 활용할 수 있습니다.</li>
				<li>전환된 위치 데이터를 병합하여 활용할 수 있습니다.</li>
			</ul>
			<img class="mt50" src="${pageContext.request.contextPath}/img/guide/data.png" alt=""/>
		</div>
		<div class="mt50">
			<h1>데이터 분석 6종</h1>
			<ul>
				<li>전환된 위치데이터를 데이터 분석 메뉴에서 기초 분석(2종), 응용 분석(4종)에 활용할 수 있습니다.</li>
				<li>기초 공간 분석 : 전환된 위치정보를 기반으로 경계를 생성할 수 있는 공간분석기법으로 경계 분석과 보로노이 다이어그램을 활용할 수 있습니다.</li>
				<li>응용 공간 분석 : 위치정보를 기반으로 데이터의 관계성과 특성을 파악할 수 있는 분석기법 으로 버퍼 분석, 입지 계수, 공간자기상관분석, 데이터 간 연산 분석을 활용할 수 있습니다.</li>
			</ul>
			<img class="mt50" src="${pageContext.request.contextPath}/img/guide/data.png" alt=""/>
		</div>
		<div class="mt50">
			<h1>공유 게시판</h1>
			<ul>
				<li>사용자의 소속 그룹 사용자들과 데이터 및 분석 결과를 공유할 수 있습니다.</li>
				<li>공유 게시판에서 그룹별 공유 내역을 확인할 수 있습니다.</li>
			</ul>
			<img class="mt50" src="${pageContext.request.contextPath}/img/guide/data.png" alt=""/>
		</div> --%>
	</div>
</div>