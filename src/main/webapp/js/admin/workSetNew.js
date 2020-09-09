(function(W, D) {
	W.$workSetNew = W.$workSetNew || {};
	
	$(document).ready(function() {
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
		});
		
		$workSetNew.event.setUIEvent();
		
		$("#job_step1").click();
		$(".dbjob").show();
		$(".dbmovjob").show();
		$(".dbgeomovjob").show();
		
		var mime = 'text/x-mariadb';
		
		window.editor = CodeMirror.fromTextArea(document.getElementById('qry_txt'), {
			mode: mime,
			indentWithTabs: true,
			smartIndent: true,
			lineNumbers: true,
			matchBrackets : true,
			autofocus: true
		});
	});
	
	$workSetNew.ui = {
			hideStep : function() {
				$(".dbjob").hide();
				$(".dbmovjob").hide();
				$(".collectjob").hide();
				$(".geojob").hide();
				$(".geomovjob").hide();
				$(".dbgeomovjob").hide();
				$(".shelljob").hide();
				$(".coordconv").hide();
				$(".movjob").hide();
			}
	};
	
	
	$workSetNew.event = {
			setUIEvent : function() {
				$(".jobsel").on("click", function() {
					$workSetNew.ui.hideStep();
					if ($("#job_step1").is(':checked')) {
						$(".dbjob").show();
						$(".dbmovjob").show();
						$(".dbgeomovjob").show();
					}
					if ($("#job_step2").is(':checked')) {
						$(".coordconv").show();
					}
					if ($("#job_step3").is(':checked')) {
						$(".geojob").show();
						$(".geomovjob").show();
						$(".dbgeomovjob").show();
					}
					if ($("#job_step4").is(':checked')) {
						//$(".dbmovjob").show();
						//$(".geomovjob").show();
						$(".dbgeomovjob").show();
						$(".movjob").show();
					}
					if ($("#job_step5").is(':checked')) {
						$(".collectjob").show();
					}
					if ($("#job_step6").is(':checked')) {
						$(".shelljob").show();
					}
				});

				$("#btnSave").on("click", function() {
					var jobObj = new Object();
					jobObj.job_step = $(":input:radio[name=job_step]:checked").val();
					jobObj.job_nm = $("#job_nm").val();
					jobObj.cl_nm = $("#cl_nm").val();
					jobObj.storage_div_nm = $(":input:radio[name=storage_div_nm]:checked").val();
					jobObj.col_cd = $(":input:radio[name=col_cd]:checked").val();
					jobObj.geo_method = $(":input:radio[name=geo_method]:checked").val();
					jobObj.geo_depth = "";
					jobObj.schema_nm = $("#schema_nm").val();
					jobObj.tbl_nm = $("#tbl_nm").val();
					jobObj.tgt_schema_nm = $("#tgt_schema_nm").val();
					jobObj.tgt_tbl_nm = $("#tgt_tbl_nm").val();
					jobObj.geo_fld = $("#geo_fld").val();
					jobObj.shell_cmd = $("#shell_cmd").val();
					jobObj.qry_txt = window.editor.getValue();
					jobObj.x_fld = $("#x_fld").val();
					jobObj.y_fld = $("#y_fld").val();
					jobObj.coord_type = $("#coord_type").val();
					jobObj.mv_tgt_tbl_nm = $("#mv_tgt_tbl_nm").val();
					
					if ($commonFunc.isEmpty(jobObj.job_step)) { $messageNew.open("알림","업무단계를 선택해주세요."); return; }
					if (jobObj.job_nm == "") { $messageNew.open("알림","업무명을 입력해주세요."); return; }
					if (jobObj.cl_nm == "") { $messageNew.open("알림","분류를 선택해주세요."); return; }
					
					if ($("#job_step1").is(':checked')) {
						jobObj.col_cd = "";
						jobObj.tgt_schema_nm = "";
						jobObj.tgt_tbl_nm = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.geo_fld = "";
						jobObj.shell_cmd = "";
						if ($commonFunc.isEmpty(jobObj.storage_div_nm)) { $messageNew.open("알림","DB유형을 선택해주세요."); return; }
						if (jobObj.schema_nm == "") { $messageNew.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $messageNew.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.qry_txt == "") { $messageNew.open("알림","쿼리를 입력해주세요."); return; }
						
					}
					if ($("#job_step2").is(':checked')) {
						jobObj.col_cd = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.geo_fld = "";
						jobObj.shell_cmd = "";
						jobObj.qry_txt = "";
						jobObj.tgt_schema_nm = "";
						jobObj.tgt_tbl_nm = "";
						if (jobObj.schema_nm == "") { $messageNew.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $messageNew.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.x_fld == "") { $messageNew.open("알림","X필드명을 입력해주세요."); return; }
						if (jobObj.y_fld == "") { $messageNew.open("알림","Y필드명을 입력해주세요."); return; }
						if (jobObj.coord_type == "") { $messageNew.open("알림","현재 좌표계를 선택해주세요."); return; }
					}
					if ($("#job_step3").is(':checked')) {
						jobObj.col_cd = "";
						jobObj.storage_div_nm = "";
						jobObj.shell_cmd = "";
						jobObj.qry_txt = "";
						if ($commonFunc.isEmpty(jobObj.geo_method)) { $messageNew.open("알림","지오코딩 유형을 선택해주세요."); return; }
						if ((jobObj.geo_method == "sop" || jobObj.geo_method == "daum") && jobObj.schema_nm == "") { $messageNew.open("알림","스키마를 입력해주세요."); return; }
						if ((jobObj.geo_method == "sop" || jobObj.geo_method == "daum") && jobObj.tbl_nm == "") { $messageNew.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.geo_fld == "") { $messageNew.open("알림","지오코딩 필드를 입력해주세요."); return; }
					}
					if ($("#job_step4").is(':checked')) {
						jobObj.col_cd = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.geo_fld = "";
						jobObj.shell_cmd = "";
						jobObj.qry_txt = "";
						jobObj.storage_div_nm = "";
						jobObj.tgt_schema_nm = "";
						if (jobObj.schema_nm == "") { $messageNew.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $messageNew.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.mv_tgt_tbl_nm == "") { $messageNew.open("알림","타깃 테이블명을 입력해주세요."); return; }
						jobObj.tgt_tbl_nm = jobObj.mv_tgt_tbl_nm;
					}
					if ($("#job_step5").is(':checked')) {
						jobObj.storage_div_nm = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.schema_nm = "";
						jobObj.tbl_nm = "";
						jobObj.tgt_schema_nm = "";
						jobObj.tgt_tbl_nm = "";
						jobObj.geo_fld = "";
						jobObj.shell_cmd = "";
						jobObj.qry_txt = "";
						if ($commonFunc.isEmpty(jobObj.col_cd)) { $messageNew.open("알림","수집대상을 선택해주세요."); return; }
					}
					if ($("#job_step6").is(':checked')) {
						jobObj.storage_div_nm = "";
						jobObj.col_cd = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.schema_nm = "";
						jobObj.tbl_nm = "";
						jobObj.tgt_schema_nm = "";
						jobObj.tgt_tbl_nm = "";
						jobObj.geo_fld = "";
						jobObj.qry_txt = "";
						if (jobObj.shell_cmd == "") { $messageNew.open("알림","쉘명령을 입력해주세요."); return; }
					}

					var param = new Object();
					param.jsonStr = JSON.stringify(jobObj);
					
					var options = {
						isBeforSend : true,
						method : "POST",
						params : param
					};
					$ajax.requestApi(contextPath + "/api/prjmng/workSetNew.do", options,  function(res) {
						switch(parseInt(res.errCd)) {
							case 0:
								$log.srvLogWrite("Z2", "01", "01", "03", "", "");
								$messageNew.open("알림", "등록되었습니다.");
								//log generate by cis
								/* var log_param = "ShareBoardNo - " + options.params.share_board_no;
								log_param += ", ReplyNo - " + options.params.reply_no;
								$log.srvLogWrite("Z0", "05", "10", "00", "", log_param); */
								location.href='workSet';
								break;
							default:  
								$messageNew.open("알림", res.errMsg);
								break;
						}
					});
					
					//console.log(jsonStr); 

				});

			}
	};
}(window, document));