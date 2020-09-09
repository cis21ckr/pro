(function(W, D) {
	W.$prjUnitModify = W.$prjUnitModify || {};
	
	$(document).ready(function() {
		$prjUnitModify.event.setUIEvent();
		
		var mime = 'text/x-mariadb';
		
		window.editor = CodeMirror.fromTextArea(document.getElementById('qry_txt'), {
			mode: mime,
			indentWithTabs: true,
			smartIndent: true,
			lineNumbers: true,
			matchBrackets : true,
			autofocus: true
		});
		$log.srvLogWrite("Z2", "03", "01", "04", "", "");
	});
	
	$prjUnitModify.ui = {
			prj_master_hst_seq : '', 
			job_order : '',
			job_setup_seq : '',
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
			},
			setDetail : function(data) {
				$prjUnitModify.ui.job_setup_seq=data.job_setup_seq;
				$('input:radio[name=job_step]:input[value="'+data.job_step+'"]').attr("checked", true);
				$("#job_nm").val(data.job_nm);
				$("#cl_nm").val(data.cl_nm);
				$('input:radio[name=storage_div_nm]:input[value="'+data.storage_div_nm+'"]').attr("checked", true);
				$('input:radio[name=col_cd]:input[value="'+data.col_cd+'"]').attr("checked", true);
				$('input:radio[name=geo_method]:input[value="'+data.geo_method+'"]').attr("checked", true);
				$("#schema_nm").val(data.schema_nm);
				$("#tbl_nm").val(data.tbl_nm);
				$("#tgt_schema_nm").val(data.tgt_schema_nm);
				$("#tgt_tbl_nm").val(data.tgt_tbl_nm);
				$("#mv_tgt_tbl_nm").val(data.tgt_tbl_nm);
				$("#geo_fld").val(data.geo_fld);
				$("#shell_cmd").val(data.shell_cmd);
				$("#x_fld").val(data.x_fld);
				$("#y_fld").val(data.y_fld);
				$("#coord_type").val(data.coord_type);
				if (data.schd_type != '단일') $("#btnExec").hide();
				
				$("#job_sts_dt").html(data.mod_ts);
				if (data.job_sts == 'success') {
					$("#job_sts").html('성공');
				} else if (data.job_sts == 'fail') {
					$("#job_sts").html('실패');
				} else if (data.job_sts == 'running' || data.job_sts == 'start') {
					$("#job_sts").html('실행중');
				} else if (data.job_sts == 'standby' || data.job_sts == 'ready') {
					$("#job_sts").html('대기');
				} else if (data.job_sts == 'manual') {
					$("#job_sts").html('대기');
				} else if (data.job_sts == 'stop') {
					$("#job_sts").html('정지');
				}
				$("#job_log").html(data.job_log);
				window.editor.setValue(data.qry_txt);
				
				$prjUnitModify.ui.hideStep();
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
			}
	};
	
	//AJAX 내용작성
	$prjUnitModify.request = {
			
			/**
			 * 
			 * @name         : doReqWorkSetDetailInfo
			 * @description  : 단위업무 상세정보를 조회한다.
			 * @date         : 2019. 07. 16. 
			 * @author	     : 최인섭
			 * @history 	 :
			 * @param postNo : 게시물 번호
			 */
			doReqWorkSetDetailInfo : function(prj_master_hst_seq, job_order) {
				$prjUnitModify.ui.prj_master_hst_seq = prj_master_hst_seq;
				$prjUnitModify.ui.job_order = job_order;
				
				var options = {
					params : {
						prj_master_hst_seq : prj_master_hst_seq,
						job_order : job_order
					}
				};
			
				$ajax.requestApi(contextPath + "/api/prjmng/prjUnitModify.do", options, function(res) {
					switch(parseInt(res.errCd)) {
						case 0:
							var result = res.result;
							$prjUnitModify.ui.setDetail(result);
							break;
						default:
							$message.open("알림", res.errMsg);
							break;
					}
				});
			}
	};
	
	$prjUnitModify.event = {
			setUIEvent : function() {
				$(".jobsel").on("click", function() {
					$prjUnitModify.ui.hideStep();
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
						$(".geomovjob").show();
						$(".dbgeomovjob").show();
					}
					if ($("#job_step5").is(':checked')) {
						$(".collectjob").show();
					}
					if ($("#job_step6").is(':checked')) {
						$(".shelljob").show();
					}
				});
				
				$("#btnExec").on("click", function() {
					var jobObj = new Object();
					jobObj.prj_master_hst_seq = $prjUnitModify.ui.prj_master_hst_seq;
					jobObj.job_setup_seq = '' + $prjUnitModify.ui.job_setup_seq;
					jobObj.stateCd = 'standby';
					var param = new Object();
					param.jsonStr = JSON.stringify(jobObj);
					
					var options = {
						isBeforSend : true,
						method : "POST",
						params : param
					};
					$ajax.requestApi(contextPath + "/api/prjmng/updatePrjExec.do", options,  function(res) {
						switch(parseInt(res.errCd)) {
							case 0:
								$message.open("알림", "저장되었습니다.");
								//log generate by cis
								/* var log_param = "ShareBoardNo - " + options.params.share_board_no;
								log_param += ", ReplyNo - " + options.params.reply_no;
								$log.srvLogWrite("Z0", "05", "10", "00", "", log_param); */
								location.href='prjExec';
								break;
							default:  
								$message.open("알림", res.errMsg);
								break;
						}
					});
				});
				
				$("#btnSave").on("click", function() {
					var jobObj = new Object();
					jobObj.prj_master_hst_seq = $prjUnitModify.ui.prj_master_hst_seq;
					jobObj.job_setup_seq = $prjUnitModify.ui.job_setup_seq;
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
					
					if ($commonFunc.isEmpty(jobObj.job_step)) { $message.open("알림","업무단계를 선택해주세요."); return; }
					if (jobObj.job_nm == "") { $message.open("알림","업무명을 입력해주세요."); return; }
					if (jobObj.cl_nm == "") { $message.open("알림","분류를 선택해주세요."); return; }
					
					if ($("#job_step1").is(':checked')) {
						jobObj.col_cd = "";
						jobObj.tgt_schema_nm = "";
						jobObj.tgt_tbl_nm = "";
						jobObj.geo_method = "";
						jobObj.geo_depth = "";
						jobObj.geo_fld = "";
						jobObj.shell_cmd = "";
						if ($commonFunc.isEmpty(jobObj.storage_div_nm)) { $message.open("알림","DB유형을 선택해주세요."); return; }
						if (jobObj.schema_nm == "") { $message.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $message.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.qry_txt == "") { $message.open("알림","쿼리를 입력해주세요."); return; }
						
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
						if ($commonFunc.isEmpty(jobObj.geo_method)) { $message.open("알림","지오코딩 유형을 선택해주세요."); return; }
						if (jobObj.schema_nm == "") { $message.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $message.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.geo_fld == "") { $message.open("알림","지오코딩 필드를 입력해주세요."); return; }

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
						if (jobObj.schema_nm == "") { $message.open("알림","스키마를 입력해주세요."); return; }
						if (jobObj.tbl_nm == "") { $message.open("알림","테이블명을 입력해주세요."); return; }
						if (jobObj.mv_tgt_tbl_nm == "") { $message.open("알림","타깃 테이블명을 입력해주세요."); return; }
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
						if ($commonFunc.isEmpty(jobObj.col_cd)) { $message.open("알림","수집대상을 선택해주세요."); return; }
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
						if (jobObj.shell_cmd == "") { $message.open("알림","쉘명령을 입력해주세요."); return; }
					}

					var param = new Object();
					param.jsonStr = JSON.stringify(jobObj);
					
					var options = {
						isBeforSend : true,
						method : "POST",
						params : param
					};
					$ajax.requestApi(contextPath + "/api/prjmng/updatePrjUnitSet.do", options,  function(res) {
						switch(parseInt(res.errCd)) {
							case 0:
								$message.open("알림", "저장되었습니다.");
								//log generate by cis
								/* var log_param = "ShareBoardNo - " + options.params.share_board_no;
								log_param += ", ReplyNo - " + options.params.reply_no;
								$log.srvLogWrite("Z0", "05", "10", "00", "", log_param); */
								location.href='prjExec';
								break;
							default:  
								$message.open("알림", res.errMsg);
								break;
						}
					});
					
					//console.log(jsonStr); 

				});

			}
	};
}(window, document));