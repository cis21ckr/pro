package kostat.lbdms.ServiceAPI.api;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kostat.lbdms.ServiceAPI.center.api.interceptor.annotation.Interceptor;
import kostat.lbdms.ServiceAPI.common.security.Security;
import kostat.lbdms.ServiceAPI.common.util.StringUtil;
import kostat.lbdms.ServiceAPI.common.web.util.ConfigUtil;
import kostat.lbdms.ServiceAPI.controller.service.CollectService;
import kostat.lbdms.ServiceAPI.controller.service.KostatDataService;
import kostat.lbdms.ServiceAPI.exception.AuthorityException;

/**
 * @Class Name : PrjMngMapper.java
 * @Description : PrjMngMapper Class
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2019.7.17           최초생성
 *
 * @author SGIS+ 개발팀
 * @since 2019.7.17
 * @version 1.0
 * @see
 *
 */

@Controller
@Interceptor("CallLogger")
@RequestMapping(value="/api/collect/")
public class CollectAPI {
	@SuppressWarnings("unused")
	private final Log logger = LogFactory.getLog(PrjMngAPI.class);
	
	@Resource(name="collectService")
	private CollectService collectService;
	
	@Resource(name="kostatDataService")
	private KostatDataService kostatDataService;
	/**
	 * 주소DB수집현황 목록을 가져온다.
	 * @param request
	 * @param response
	 * @return /view/prjmng/getWorkSet.do
	 */
	@Interceptor("PageCallReg")
	@RequestMapping(value="/getAddrDBStstList.do")
	public ModelAndView getAddrDBStstList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {
			String startIdx = (String)request.getParameter("startIdx");
			String resultCnt = (String)request.getParameter("resultCnt");
			String sort = (String)request.getParameter("sort");
			String order = (String)request.getParameter("order");
			String type = (String)request.getParameter("type");
			String searchText = (String)request.getParameter("searchText");
			
			startIdx = Security.cleanXss(startIdx);
			resultCnt = Security.cleanXss(resultCnt);
			sort = Security.cleanXss(sort);
			order = Security.cleanXss(order);
			type = Security.cleanXss(type);
			searchText = Security.cleanXss(searchText);
			
			//시작 인덱스
			if (startIdx == null) {
				startIdx = "0";
			}
			
			//한페이지당 결과 수
			if (resultCnt == null) {
				resultCnt = "50";
			}
			
			//정렬 칼럼
			if (sort != null) {
				mapParameter.put("sort", sort);
			}
			
			//정렬 방법
			if (order != null) {
				mapParameter.put("order", order);
			}
			
			//검색어
			mapParameter.put("searchText", searchText);
			
			mapParameter.put("startIdx", Integer.parseInt(startIdx));
			mapParameter.put("resultCnt", Integer.parseInt(resultCnt));
			
			List WorkSet = (List)collectService.getAddrDBStstList(mapParameter);
			
			model.put("id", "G2G11001");
			model.put("errCd", "0");
			model.put("errMsg", "Success");
			model.put("result", WorkSet);
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	
	/**
	 * 일자리 자동화 현황 목록을 가져온다.
	 * @param request
	 * @param response
	 * @return /view/prjmng/getWorkSet.do
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Interceptor("PageCallReg")
	@RequestMapping(value="/getCollectJobSts.do")
	public ModelAndView getCollectJobSts(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {
			String startIdx = (String)request.getParameter("startIdx");
			String resultCnt = (String)request.getParameter("resultCnt");
			String sort = (String)request.getParameter("sort");
			String order = (String)request.getParameter("order");
			String type = (String)request.getParameter("type");
			String searchText = (String)request.getParameter("searchText");
			
			startIdx = Security.cleanXss(startIdx);
			resultCnt = Security.cleanXss(resultCnt);
			sort = Security.cleanXss(sort);
			order = Security.cleanXss(order);
			type = Security.cleanXss(type);
			searchText = Security.cleanXss(searchText);
			
			//시작 인덱스
			if (startIdx == null) {
				startIdx = "0";
			}
			
			//한페이지당 결과 수
			if (resultCnt == null) {
				resultCnt = "50";
			}
			
			//정렬 칼럼
			if (sort != null) {
				mapParameter.put("sort", sort);
			}
			
			//정렬 방법
			if (order != null) {
				mapParameter.put("order", order);
			}
			
			//검색어
			mapParameter.put("searchText", searchText);
			
			mapParameter.put("startIdx", Integer.parseInt(startIdx));
			mapParameter.put("resultCnt", Integer.parseInt(resultCnt));
			
			List WorkSet = (List)collectService.getCollectJobSts(mapParameter);
			
			model.put("id", "G2G11001");
			model.put("errCd", "0");
			model.put("errMsg", "Success");
			model.put("result", WorkSet);
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/searchSgg.do")
	public ModelAndView searchSgg(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {
			String sido = (String)request.getParameter("sido");
			String addr_type = (String)request.getParameter("addr_type");
			
			mapParameter.put("sido", Integer.parseInt(sido));
			
			List addrSet = null;
			
			if (addr_type.equalsIgnoreCase("admin")) {
				addrSet = (List)collectService.searchAdminSgg(mapParameter);
			} else {
				addrSet = (List)collectService.searchLegSgg(mapParameter);
			}
			model.put("id", "G2G11001");
			model.put("errCd", "0");
			model.put("errMsg", "Success");
			model.put("result", addrSet);
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/searchEmd.do")
	public ModelAndView searchEmd(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {
			String sgg = (String)request.getParameter("sgg");
			String addr_type = (String)request.getParameter("addr_type");
			
			mapParameter.put("sgg", Integer.parseInt(sgg));
			
			List addrSet = null;
			
			if (addr_type.equalsIgnoreCase("admin")) {
				addrSet = (List)collectService.searchAdminEmd(mapParameter);
			} else {
				addrSet = (List)collectService.searchLegEmd(mapParameter);
			}
			model.put("id", "G2G11001");
			model.put("errCd", "0");
			model.put("errMsg", "Success");
			model.put("result", addrSet);
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	

	
	/**
	 * 주소DB 정보 조회
	 * @param request
	 * @param response
	 * @return /view/collect/execQryAddr.do
	 */
	@SuppressWarnings("unchecked")
	@Interceptor("PageCallReg")
	@RequestMapping(value="/execQryAddr.do")
	public ModelAndView execQryResult(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {		
			String qry_txt = (String)request.getParameter("qry_txt");
			
			if (qry_txt.trim().equals("")) {
				model.put("id", "G2G11001");
				model.put("errCd", "-1");
				model.put("errMsg", "처리 중 에러가 발생하였습니다.");
				return new ModelAndView("jsonV", model);
			}
			
			qry_txt = "SELECT  " +
					"pnu, bd_mgt_sn, sido_nm, sgg_nm, adm_nm, leg_nm, road_nm, " +
					"ri_nm, bd_main_nm, bd_sub_nm, road_nm_main_no, road_nm_sub_no, " +
					"pcl, x_coor, y_coor " +
					"FROM geocoording.geocoording_m_2015 " + 
					"WHERE 1 = 1 " + qry_txt + " LIMIT 1000";
			
			mapParameter.put("database", ConfigUtil.getString("jdbc.address.url"));
			mapParameter.put("exe_query", qry_txt);
			
			JSONObject jsonObj = new JSONObject();
			jsonObj = (JSONObject)kostatDataService.execPgQryResult(mapParameter);
			
			if (jsonObj.getString("MESSAGE").equalsIgnoreCase("success")) {
				model.put("id", "G2G11001");
				model.put("errCd", "0");
				model.put("errMsg", "Success");
				
				model.put("column", StringUtil.toList(jsonObj.getJSONArray("COLUMN")));
				model.put("result", StringUtil.toList(jsonObj.getJSONArray("VALUE")));
			} else {
				model.put("id", "G2G11001");
				model.put("errCd", "-1");
				model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			}
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	
	/**
	 * 주소DB수집현황 목록을 가져온다.
	 * @param request
	 * @param response
	 * @return /view/prjmng/getWorkSet.do
	 */
	@Interceptor("PageCallReg")
	@RequestMapping(value="/getCollectList.do")
	public ModelAndView getCollectList(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map mapParameter = new HashMap();
		try {
			String startIdx = (String)request.getParameter("startIdx");
			String resultCnt = (String)request.getParameter("resultCnt");
			String sort = (String)request.getParameter("sort");
			String code = (String)request.getParameter("code");
			String order = (String)request.getParameter("order");
			String type = (String)request.getParameter("type");
			String searchText = (String)request.getParameter("searchText");
			
			startIdx = Security.cleanXss(startIdx);
			resultCnt = Security.cleanXss(resultCnt);
			sort = Security.cleanXss(sort);
			code = Security.cleanXss(code);
			order = Security.cleanXss(order);
			type = Security.cleanXss(type);
			searchText = Security.cleanXss(searchText);
			
			//시작 인덱스
			if (startIdx == null) {
				startIdx = "0";
			}
			
			//한페이지당 결과 수
			if (resultCnt == null) {
				resultCnt = "50";
			}
			
			//정렬 칼럼
			if (sort != null) {
				mapParameter.put("sort", sort);
			}
			
			//정렬 방법
			if (order != null) {
				mapParameter.put("order", order);
			}
			
			//검색어
			mapParameter.put("searchText", searchText);
			mapParameter.put("code", code);
			mapParameter.put("startIdx", Integer.parseInt(startIdx));
			mapParameter.put("resultCnt", Integer.parseInt(resultCnt));
			
			List WorkSet = (List)collectService.getCollectList(mapParameter);
			
			model.put("id", "G2G11001");
			model.put("errCd", "0");
			model.put("errMsg", "Success");
			model.put("result", WorkSet);
			
		} catch (Exception e) {
			model.put("id", "G2G11001");
			model.put("errCd", "-1");
			model.put("errMsg", "처리 중 에러가 발생하였습니다.");
			logger.info(e);
		}
		finally {
		}
		return new ModelAndView("jsonV", model);
	}
	

	/**
	 * 국통데이터 수집 삭제
	 * 
	 * @param request	
	 * @param response
	 * @return /api/sysmgt/deleteInstitution
	 * @throws IOException
	 */
	@RequestMapping(value = "/deleteCollect.do")
	@ResponseBody
	public ModelAndView deleteCollect(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		Map<String, Object> mapParameter = new HashMap<String, Object>();
		try {
			String user_id = (String)request.getSession().getAttribute("user_id");
			if (user_id == null) throw new AuthorityException ("세션정보가 만료되었습니다.");
			mapParameter.put("user_id", user_id);
			
			String collect_seq = request.getParameter("collect_seq");
			
			mapParameter.put("collect_seq", collect_seq);
			collectService.deleteCollect(mapParameter);
			
			model.addAttribute("errCd", "0");
			model.addAttribute("result", "success");
		} catch (Exception e) {
			model.addAttribute("errCd", "-1");
			model.addAttribute("errMsg", e.getMessage());
		}
		return new ModelAndView("jsonV",model);
	}
	
}