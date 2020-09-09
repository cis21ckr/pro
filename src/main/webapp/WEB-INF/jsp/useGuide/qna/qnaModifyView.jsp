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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/useGuide/qna/qnaModifyView.js"></script>
	
	<script>
      		$(document).ready(
	   			function() {
	   			 	var postNo = "${post_no}";
	   			 	if (postNo != undefined && postNo != null) {
	   			 		$qnaModifyView.request.doReqQnaDetailInfo(postNo);
	   			 	}
   			});
    </script>
	
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>

	<!-- Q&A 수정 -->
	<div class="subConentWrap">
		<div class="subTitleWrap">
			<div class="subTitle">
				<h1>Q&A </h1>
				<h2>SGIS pro 이용에 불편함이 있으신가요? 문의사항을 남겨주시면 빠른 시일 내에 답변하겠습니다.</h2>
			</div>						
		</div>
		<div id="qnaModifyView">
			<form class="QA" id="qnaModifyForm" method="POST" enctype="multipart/form-data">
				<table>
					<colgroup>
						<col style="width:130px"/>
						<col style=""/>
					</colgroup>
					<tbody>
						<tr>
							<th>질문 제목</th>
							<td class="list">
								<input type="text"  id="postTitle" placeholder="게시글 제목을 입력하세요."  maxlength="80" tabindex="1" />
							</td>
						</tr>
						<tr>
							<th>상세내용</th>
							<td class="list">
								<textarea id="qnaModifyContentArea" tabindex="2" ></textarea>
							</td>
						</tr>
						<tr>
							<td>파일 첨부</td>
							<td>
								<div>
									<div class="list" style="padding:5px 30px;">
										<ul>
											<li>
												<span ><a id="deletFileBtn" href="javascript:void(0)" style="display:none;"><img src="${pageContext.request.contextPath}/img/common/btn_minus.png" alt="파일삭제" style="margin-top:-2px;"/></a></span>
												<span><input id="qnaFile" class="pFile" readonly="readonly" value="" placeholder="파일을 선택해 주세요"  style="margin-top:-7px;border:none;width:700px;"/></span>
												<input id=searchTextFile type="file" name="searchTextFile" style="width:0px;height:0px;position:absolute;left:-9999999px;" />
											</li>
										</ul>
									</div>
									<button class="btn" id="searchFileBtn" style="height:40px;">내 PC에서 파일 찾기</button>
								</div>
								<div>
									<span style="text-align:left;color:red;">*첨부파일은 최대 1개, 파일당 최대 3MB까지 등록 가능합니다.<br>&nbsp;첨부가능 파일유형 [png, jpg, jpeg, bmp, gif, tif, tiff, zip, 7z, hwp, hwt, doc, docx, ppt, pptx, pdf, xls, xlsx, csv]</span>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="QABtn">
					<button id="qnaModifyCancelBtn" class="mr15">취소</button>	
					<button id="qnaModifyBtn">수정</button>							
				</div>
			</form>
		</div>
	</div>	
	<jsp:include page="/view/common/includeFooter"></jsp:include>
</body>
</html>