<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- 데이터보드영역 영역 -->
<a href="javascript:void(0)" id="analysisDataBoard" class="analysisDataBoard" style="opacity: 10; right: 0px;">데이터보드</a>
<div class="dataBoardBox" style="right:-1500px;">
	<div class="dbHeader">
		<a href="javascript:void(0)" id="dataBoardClose"><img src="${pageContext.request.contextPath}/img/common/ico_close01.png" /></a>
	</div>
	<div class="dbCont">
		<div class="dbInfo">
			<table style="margin: 10px 10px 10px 20px;">
				<tr>
					<th class="tit w80">분석타입 : </th>
					<td id="analysisType2" class="tit fn"></td>
				</tr>
				<tr>
					<th class="tit w80">분석명 : </th>
					<td id="analysisTitle2" class="tit fn"></td>
				</tr>
				<tr>
					<th class="tit w80">분석시간 : </th>
					<td id="analysis_time" class="tit fn"></td>
				</tr>
			</table>
		</div>
		<div class="dbChkCensus">
			<div class="chkCensus">
			<a href="javascript:$('.chkCensusImg').show();">SGIS-pro의 공간서비스 특성상 공표된 값과 차이가 있을 수 있습니다.<br/> 
			유의하시기 바랍니다. [더보기]</a>
			</div>
			<div class="chkCensusImg"><a href="javascript:$('.chkCensusImg').hide();"><img src="${pageContext.request.contextPath}/img/common/sgis_use_notice_pop.png" /></a></div>
		</div>
		<div class="scrolls">
			<dl class="dbItemList">
			
				<!-- 분석조건 요약정보 -->
				<dt style="margin-top:10px;"><a href="javascript:void(0)">선택한 분석 조건 Summary</a></dt>
				<dd>
					<table style="margin: 10px 10px 10px 20px;" class="clist01">
						<tr>
							<th class="t01"  style="text-align:left;">데이터 조건 : </th>
							<td id="dataInfo2" class="t02"></td>
						</tr>
						<tr>
							<th class="t01" style="text-align:left;">지역 조건 : </th>
							<td id="regionInfo2" class="t02"></td>
						</tr>
						<tr id="bufferInfoArea" style="display:none;"> 
							<th class="t01" style="text-align:left;">버퍼 조건 : </th>
							<td id="bufferInfo" class="t02"></td>
						</tr>
					</table>
				</dd>
				
				<!-- 분석결과 데이터(그래프) -->
				<dt><a href="javascript:void(0)">분석 결과 그래프</a></dt>
				<dd>
					<div id="operationChartArea" style="display:none;">
						<div class="chartChk" style="height: 40px;margin: 10px 0 10px 40px;">
								<input type="radio" id="data_all" class="rdEtc chartDataType" name="chartChk" checked />
								<label for="data_all" class="mr20 chartChk00 rdlabel">전체</label>
								<input type="radio" id="data_A" class="rdEtc chartDataType" name="chartChk"  />
								<label for="data_A" class="mr20 chartChk01 rdlabel">데이터 A</label>
								<input type="radio" id="data_B" class="rdEtc chartDataType" name="chartChk" />
								<label for="data_B" class="chartChk02 rdlabel">데이터 B</label>
								<input type="radio" id="data_analysis" class="rdEtc chartDataType" name="chartChk" />
								<label for="data_analysis" class="chartChk03 rdlabel">분석데이터</label>
							</div> 
					</div>
					<div class="scrollWrapper wrapperChartScroll">
						<div id="normalChartArea" style="display:none;">
							<div class="chart" id="chart01"></div>
						</div>
						<div id="spaitalChartArea" style="display:none;">
							<div class="chartChk" style="height: 40px;margin: 10px 0 0px 100px;">
								<input type="radio" id="bubble" class="rdEtc chartType" name="chartChk" checked />
								<label for="chartChk01" class="mr20 chartChk01 rdlabel">사사분면 형</label>
								<input type="radio" id="bar" class="rdEtc chartType" name="chartChk" />
								<label for="chartChk02" class="chartChk02 rdlabel">막대그래프 형</label>
							</div> 
							<div id="bubbleChartArea" >
								<div class="chart" id="chart02"></div>
							</div>
							<div id="barChartArea" style="display:none;">
								<div class="chart" id="chart03"></div>
							</div>
						</div>
					</div>
				</dd>
				
				<!-- 분석결과 데이터(표) -->
				<dt><a href="javascript:void(0)">분석 결과 데이터</a></dt>
				<dd>
					<div class="scrollWrapper">
						<div id="voronoiArea" style="display:none;" >
							<table style="margin: 0px 10px 10px 20px;" class="clist01">
								<tr>
									<th class="t01"  style="text-align:left;width:200px;">POI의 영향권 평균 면적 : </th>
									<td id="avgTotalArea" class="t02"></td>
								</tr>
								<tr>
									<th class="t01" style="text-align:left;width:200px;">전체 지역 대비 평균 면적의 비율 : </th>
									<td id="totalPerAvgArea" class="t02"></td>
								</tr>
							</table>
						</div>
						<div id="bufferArea" style="display:none;" >
							<table style="margin: 0px 10px 10px 20px;" class="clist01">
								<tr>
									<th class="t01"  style="text-align:left;width:200px;">전체 면적 : </th>
									<td id="avgTotalArea" class="t02"></td>
								</tr>
								<tr>
									<th class="t01" style="text-align:left;width:200px;">버퍼 총 면적 : </th>
									<td id="totalPerAvgArea" class="t02"></td>
								</tr>
							</table>
						</div>
						<table class="listTable03" id="gridTable"  style="display:none;"></table>
					</div>
					<div id="spatialArea" style="display:none;">
						<p class="e02">공간자기상관도 통계적 해석 기준</p>
						<table class="listTable03"> 
							<tr>  
								<th>모란지수 Z[i]</th> 
								<th>공간 자기 상관도</th> 
								<th>유의 수준(%)</th>    
							</tr>
							<tr>  
								<td>2.57 ≤ Z[I]</td> 
								<td>매우 높음</td> 
								<td>1</td>   
							</tr>
							<tr>  
								<td>1.96 ≤ Z[I] ＜ 2.57</td> 
								<td>높음</td> 
								<td>5</td>   
							</tr>
							<tr>  
								<td>1.64 ≤ Z[I] ＜ 1.96</td> 
								<td>약간 높음</td> 
								<td>10</td>   
							</tr>
							<tr>  
								<td>-1.64 ≤ Z[I] ＜ 1.64</td> 
								<td>보통(무작위 패턴)</td> 
								<td></td>   
							</tr>
							<tr>  
								<td>-1.96 ≤ Z[I] ＜ -1.64</td> 
								<td>약간 낮음</td> 
								<td>10</td>   
							</tr>
							<tr>  
								<td>-2.5 ≤ Z[I] ＜ -1.96</td> 
								<td>낮음</td> 
								<td>5</td>   
							</tr>
							<tr>  
								<td>Z[I] ≤ -2.57</td> 
								<td>매우 낮음</td> 
								<td>1</td>   
							</tr>
						</table>
						<p style="font-size:11px;margin:10px 0 10px 10px;">*출처 : 공간통계 분석의 이해와 활용을 위한 첫걸음- 이경주, 황명화 외 2인, 국토연구원</p>
					</div>
					<div id="lqArea" style="display:none;">
						<p class="e02">입지계수 산출방식</p>
						<div  style="border: 1px solid #d5d5d5;border-radius: 10px; background: #f8f8f8;padding: 10px;margin: 10px;">
							<div>
								<table style="text-align: center;">
									<tbody>
										<tr>
											<td rowspan="2"><span style="font-weight: bold;float:left;margin-right:20px;">입지계수(LQ) :</span></td>
											<td rowspan="2">LQ<sub>ij</sub>=</td>
											<td style="padding:3px;">Q<sub>ij</sub> / Q<sub>j</sub></td>
										</tr>
										<tr>
											<td style="border-top:1px solid;padding:0 3px;">Q<sub>i</sub> / Q</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div>
								<table style="text-align: center;margin:10px 0 10px 0;">
									<tbody>
										<tr>
											<td rowspan="2"><span style="padding: 15px 10px 0  105px;font-weight: bold;">(예)</span></td>
											<td rowspan="2">LQ<sub>ij</sub>=</td>
											<td style="padding:3px;">j지역 i산업 종사자수 / j지역 총 종사자수</td>
										</tr>
										<tr>
											<td style="border-top:1px solid;padding:0 3px;">전국i산업 종사자수 / 전국 총 종사자수</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</dd>
			</dl>
		</div>
		<p class="dbe01">* 분석 결과는 내부 분석용으로만 활용이 가능합니다.</p>
	</div>
</div>	