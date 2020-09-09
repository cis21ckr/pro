<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/useGuide/useGuide.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src='${pageContext.request.contextPath}/js/plugins/ckeditor/ckeditor.js'></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/useGuide/notice/noticeDetailView.js"></script>
	<script>
      		$(document).ready(
	   			function() {
	   			 	var postNo = "${post_no}";
	   			 	if (postNo != undefined && postNo != null) {
	   			 		$noticeDetailView.request.doReqNoticeDetailInfo(postNo);
	   			 	}
	   			 	
	   				// mng_s 2019. 06. 04 j.h.Seok
	   				$log.srvLogWrite("Z0", "06", "04", "03", "", "post_no - " + postNo);
   			});
    </script>
	
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>

	<!-- 공지사항 상세정보 -->
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>공지사항</h1>
				<h2>SGIS pro 공지사항입니다. 이용에 참고하세요.</h2>
			</div>						
		</div>
		<div class="QA" id="noticeDetailView">
			<table class="reading">
				<colgroup>
					<col style=""/>
					<col style="width:250px;"/>
				</colgroup>
				<tbody>
					<tr>
						<th id="postTitle"></th>
						<th>
							<div id="postRegDt"></div>
						</th>
					</tr>
					<tr id="noticeAttachFileArea" style="display:none;">
						<th colspan="2" class="attachFileArea"></th>
					</tr>
					<tr>
						<td colspan="2"><texarea id="noticeDetailContentArea"></texarea></td>
					</tr>
				</tbody>
			</table>
			<div class="QABtn">
				<button onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/notice';">목록으로</button>						
			</div>
		</div>
	</div>
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>