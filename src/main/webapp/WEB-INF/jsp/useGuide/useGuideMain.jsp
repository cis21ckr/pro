<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/useGuide/useGuide.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/useGuide/useGuideMain.js"></script>
	
	<script>
      		$(document).ready(
   			function() {
   			 	var type = "${type}";
   				if (type.length == 0 || (type != "notice" && type != "faq" && type != "qna" && type != "guide")) {
   					type = "notice";
   				}
   				
   				// mng_s 2019. 06. 05 j.h.Seok
			 	switch(type) {
			 	case "guide":
			 		$log.srvLogWrite("Z0", "06", "01", "01", "", "");
			 		break;
			 	case "qna":
			 		$log.srvLogWrite("Z0", "06", "02", "01", "", "");
			 		break;
			 	case "faq":
			 		$log.srvLogWrite("Z0", "06", "03", "01", "", "");
			 		break;
			 	case "notice":
			 		$log.srvLogWrite("Z0", "06", "04", "01", "", "");
			 		break;
			 	}
   			
   				$guideMain.ui.doChangeView(type);
   		});
    </script>
	
</head>
<body>

	<!-- header -->
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	
	<!-- 게시판 내용 -->
	<div class="subConentWrap">

		<!-- 공지사항-->
		<jsp:include page="/view/use/notice/noticeView"></jsp:include>
		
		<!-- FAQ-->
		<jsp:include page="/view/use/faq/faqView"></jsp:include>
		
		<!-- Q&A-->
		<jsp:include page="/view/use/qna/qnaView"></jsp:include>
		
		<!-- 이용안내-->
		<jsp:include page="/view/use/guide/guideView"></jsp:include>
		
	</div>
	
	<!-- footer -->
	<jsp:include page="/view/common/includeFooter"></jsp:include>
	
</body>
</html>