package kostat.lbdms.ServiceAPI.controller.model.system;

import java.util.List;

import lombok.Data;
import net.sf.json.JSONArray;

@Data
public class MemberVO {
    /**아이디*/
	private String id;
	/**로우번호*/
	private int row;		
	/** 사용자 번호 */
	private int	user_no; 
	/** 사용자 아이디 */
	private String user_id;
	/** 사용자 비밀번호 */
	private String user_pw;
	/** 사용자 이름 */
	private String user_nm;
	/** uid */
	private String uid;
	/** 인증서 */
	private String ac;
	/** 기관 */
	private String institute;
	/** 부서 */
	private String dept;
	/** 직급 */
	private String job_pos;
	/** 이메일 */
	private String email;
	/** 전화번호 */
	private String tel_no;
	/** 전화번호 2 */
	private String tel_no2;
	/** 사용 용량 */
	private int use_sz;
	/** 사용자 구분 */
	private String user_div;
	/** 로그인 실패 횟수 */
	private int login_fail_cnt;
	/** 로그인 시간 */
	private String login_ts;
	/** 로그인 아이피 */
	private String login_ip;
	/** 승인여부 */
	private String grant_yn;
	/** 승인여부 값 */
	private String grant_yn_val;
	/** 사용여부 */
	private String use_yn;
	/** 승인일 */
	private String grant_ts;
	/** 사용 종료 일자 */
	private String stop_ts;
	/** 등록일 */
	private String reg_ts;
	/** 수정일 */
	private String mod_ts;
	/** 제한된 아이피 */
	private String restrict_ip;
	/** 리스트 번호 */
	private int list_sz;
	/** 사용자 아이디 JSONArray */
	private JSONArray user_ids;
	/** 히스토리 */
	private List<LoginHistoryVO> historys;
	/** 소속 기관 시퀀스 */
	private int inst_seq;
	/** 소속 기관 이름 */
	private String inst_nm;
	/** 중간 관리자 여부  */
	private String inst_manager_yn;
	/** 소속기관 스키마 이름 */
	private String inst_schema_nm;
	
	
	/** 사용 시작일 */
	private String use_start_date;
	/** 사용 종료일 */
	private String use_end_date;
	/** 다중 접속 여부 */
	private String multi_connect_lmtt_yn;

	/** 삭제 여부 */
	private String delete_yn;

	/** UBIS 회원 여부 */
	private String ubis_yn;
}
