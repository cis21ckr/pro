<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>SGIS pro</title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/includeHeadNew.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/common/commonDataFunc.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/admin/logSts.js"></script>
	
	<!-- mng_s 2019. 06. 04 j.h.Seok -->
	<script>
		$(document).ready(
			function() {
				//$log.srvLogWrite("Z0", "05", "01", "00", "", "");
		});

		$(function() {
		    $(".dialog").dialog({
		      autoOpen: false,
		      width: 'auto',
		      height: 'auto',
		      modal: true,
		      resizable: false,
		      minimizable: false,
		      minimizeIcon: 'ui-icon-minus'
		    });
		    // $(".default-pop-open").button().on("click", function () {
		    //   $("#dialog").dialog("open");
		    // });
		});		
	</script>
	<!-- mng_e 2019. 06. 04 j.h.Seok -->
</head>
<body>
	<jsp:include page="/view/common/includeHeader"></jsp:include>
	
  <div class="container">
    <div class="content_new">

<div class="sub-title">
  <strong class="home">시스템 운영</strong>
  <h2>운영현황</h2>
  <h3>LBDMS 시스템의 운영현황을 확인하실 수 있습니다</h3>
</div>
<div class="tabs">
  <ul>
    <li><a href="systemSts">운영현황</a></li>
    <!-- <li><a href="workSts">업무현황</a></li> -->
    <li class="is-active"><a href="logSts">접속현황</a></li>
    <li><a href="analysisSts">분석현황 통계</a></li>
    <li><a href="sysSts">시스템현황</a></li>
    <!-- <li><a href="downloadSts">다운로드 현황</a></li> -->
  </ul>
</div>
<div class="srch-form">
  <div class="row">
    <div class="cols">
      <div class="col col-sm2">
        <div class="in-box">
          <span class="select">
            <select name="term" id="term">
              <option value="days">일간</option>
              <option value="weeks">주간</option>
              <option value="months">월간</option>
            </select>
          </span>
        </div>
      </div>
      <div class="col col-sm2">
        <div class="in-box">
          <span class="select">
            <select name="instSeq" id="instSeq">
            </select>
          </span>
        </div>
      </div>
      <div class="col col-sm8">
        <div class="col col-sm1 col-txt">
          기간
        </div>
        <div class="col col-sm7">
          <div class="picker-group">
            <div class="picker-item"><span class="inputs datepicker"><input type="text" id="startDate"></span></div>
            <div class="picker-item"><span class="inputs datepicker"><input type="text" id="endDate"></span></div>
          </div>
        </div>
        <div class="col col-sm2">
          <button type="button" id="btnSearch" class="btn lager line angular">검색</button>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="view-container">
  <div class="row">
    <div class="cols">
      <div class="col col-1">
        <div class="in-box">
          <div class="tits">
            <h4>이용자 접속현황</h4>
          </div>
          <div class="chars-area">
            <div class="chart-total">
              평균 방문건수 : <span id="txtAvg"></span>건 / 누적 방문건수  : <span id="txtDatasum"></span>건
            </div>
            <canvas id="chart" width="1180" height="400"></canvas>
          </div>
          <div class="tbs1 blue">
            <div class="tb-tit">
              <div class="tit-utils">
                <button type="button" id="btn_download" class="btn lager line angular">다운로드</button>
              </div>
            </div>
            <table id="dataTbl">
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
			</div></div><!-- subConentWrap end-->				

			<!-- footer -->
			<jsp:include page="/view/common/includeFooterNew"></jsp:include>			
				
</body>
</html>

