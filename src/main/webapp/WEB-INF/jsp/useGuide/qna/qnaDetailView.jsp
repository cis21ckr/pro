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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/useGuide/qna/qnaDetailView.js"></script>
	
	<script>
      		$(document).ready(
	   			function() {
	   			 	var postNo = "${post_no}";
	   			 	if (postNo != undefined && postNo != null) {
	   			 		$qnaDetailView.request.doReqQnaDetailInfo(postNo);
	   			 	}
	   			 	
	   			 	// mng_s 2019. 06. 04 j.h.Seok
	   			 	$log.srvLogWrite("Z0", "06", "02", "03", "", "post_no - " + postNo);
   			});
    </script>
	
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>

	<!-- Q&A 상세정보  -->
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>Q&A</h1>
				<h2>SGIS pro 이용에 불편함이 있으신가요? 문의사항을 남겨주시면 빠른 시일 내에 답변하겠습니다.</h2>
			</div>			
		</div>
		<div class="QA" id="qnaDetailView">
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
					<tr id="qnaAttachFileArea" style="display:none;">
						<th colspan="2" class="attachFileArea"></th>
					</tr>
					<tr>
						<td colspan="2"><texarea id="qnaDetailContentArea"></texarea></td>
					</tr>
					<tr class="comment" style="display:none;">
						<td id="qnaComment" colspan="2" class="bg"></td>
					</tr>
				</tbody>
			</table>
			<div class="QABtn">
				<button id="qnaModifyModeBtn"  class="mr15">수정</button>
				<button id="qnaDeleteBtn" class="mr15">삭제</button>
				<button onclick="javascript:location.href='${pageContext.request.contextPath}/view/use/guideMain/qna';">목록으로</button>						
			</div>
		</div>
	</div>
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>