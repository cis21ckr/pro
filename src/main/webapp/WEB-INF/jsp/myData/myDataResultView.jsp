<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/js/plugins/jquery-easyui-1.4/sop.css" />
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/js/plugins/colorpicker/css/colpick.css">
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/map/legend.css" />
	<%-- <link rel="stylesheet"  href="${pageContext.request.contextPath}/css/analysis/analysis.css" /> --%>
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/my/myDataMap.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHead.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery-easyui-1.4/sop-src.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/colorpicker/js/colpick.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/jquery.wheelcolorpicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/colorpicker/js/jquery.xcolor.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/highcharts/highcharts.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/highcharts/highcharts-more.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/highcharts/highcharts-3d.src.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/highcharts/modules/exporting.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/highcharts/highchart.drag.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/imageCapture/rgbcolor.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/imageCapture/canvg.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/imageCapture/html2canvas.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/plugins/imageCapture/html2canvas.svg.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/map.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapBtn.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapInfo/legendInfo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Feature.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Manager.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Cricle.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Rectangle.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/draw/Draw.Polygon.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Overlay.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/measure/Draw.AreaMeasure.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/measure/Draw.DistanceMeasure.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Distance.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Poi.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common/mapDraw/Draw.Control.Measure.js"></script>
	<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisResultMap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisResultMapApi.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dataAnalysis/analysisDataBoard.js"></script> --%>
	
	 <script type="text/javascript" src="${pageContext.request.contextPath}/js/myData/myDataResultMap.js"></script>
	
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeSearch.js"></script>	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header/header.css" />
	<script>
   		$(document).ready(
			function() {				
				
   		});
    </script>
    
</head>
<body>
	<%-- <jsp:include page="/view/common/includeHeader"></jsp:include> --%>
	<div style="display:none">
		<textArea id="resourceInfo">${resourceInfo}</textArea>
		<textArea id="resourceList">${resourceList}</textArea>
		<textArea id="columnDataType">${columnDataType}</textArea>
	</div>
	<div class="fullBox">
		<div class="rela">
			<!-- <div class="SearhTitle" id="searhTitle"></div> -->
			<div class="sceneBox on" id="view1" >
				<div class="sceneRela">
					<div class="fbHeader">
						<div class="fl">
							<a href="javascript:void(0)" id="analysisType"></a>
							<span id="analysisTitle"></span>
						</div>
		
						<div class="fr">
							<!-- <a id="sgisTransfer" href="javascript:$analysisResultMap.ui.doSendSgis();">SGIS+전송 신청</a>
							<a id="groupShare"href="javascript:$analysisResultMap.ui.doShare();">그룹 공유</a>
							<a href="javascript:$analysisResultMap.ui.doFileDownload();">분석결과 다운로드</a>
							<a href="javascript:$analysisResultMap.ui.doReport();">보고서 출력</a> -->
						</div> 
					</div>
					<div class="interactiveBar">
			    	</div>
			    	<div class="mapContents" id="mapRgn_1">
			    	</div>
		    	</div>
	    	</div>
	    	
	    	<!-- 데이터보드 START-->
	    	<div id="dataBoard">
				<jsp:include page="/view/myData/myDataBoard"></jsp:include>
			</div> 
			<!-- 데이터보드 END-->											
		</div>
	</div>
	
	

	<!-- footer -->
	<%-- <jsp:include page="/view/common/includeFooter"></jsp:include> --%>
	
</body>
</html>