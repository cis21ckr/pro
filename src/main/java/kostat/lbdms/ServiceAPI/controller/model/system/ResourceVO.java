package kostat.lbdms.ServiceAPI.controller.model.system;

import java.util.List;

import lombok.Data;
import net.sf.json.JSONArray;

/**  
* <pre>
* 자원
* </pre>
*
* @author        오범용
* @since         2015. 10. 20. 오후 2:18:53
* @version         1.0
* @see
* <pre>
*  ==========  개정이력( Modification Information )  ==========  
* 
*     수정일             수정자                         수정내용
*  ------------    ------------     -------------------------------
*   2015.09.11.      오범용                        최초생성
* 
*/

@Data
public class ResourceVO {
	/**아이디번호*/
	private String id;
	/**로우번호*/
	private int row;	
	/** 총 갯수 */
	private int total;
	/** 리소스 아이디 */
	private int resource_id;
	/** 리로스 아이디 문자열 */
	private String resource_ids;
	/** 신청번호 */
	private int usable_no;
	/** 게시물 번호 */
	private int inst_seq;
	/** 공유 여부 */
	private String inst_share_yn;
	/** 스키마 이름 */
	private String inst_schema_nm;
	/** 사용자 아이디 */
	private String user_id;
	/** 데이터 저장 타입 */
	private String data_storage_type;
	/** 데이터 경로 */
	private String data_path;
	/** 데이터 갯수 */
	private String data_cnt;
	/** 데이터 생성 시간 */
	private String data_create_time;
	/** 최종 사용일 */
	private String last_used_time;
	/** 카테고리 1 기관 */
	private String category1;
	/** 카테고리 2 테마 */
	private String category2;
	/** 카테고리 3 분류 */
	private String category3;
	/** 카테고리 4 rev */
	private String category4;
	/** 설명 */
	private String description;
	/** 수집 관계 아이디 */
	private String relation_resource_id;
	/** 데이터 이름 */
	private String data_nm;
	/** 데이터 이름 */
	private String data_name;
	/** 스키마 */
	private String schema;
	/** 액션 타입 */
	private String action_type;
	/** 데이터 크기 */
	private String data_size;
	/** 다운로드 신청 */
	private String download_apply;
	/** 사용 구분 */
	private String use_type;
	/** 승인여부 */
	private String grant_yn;
	/** 등록일 */
	private String reg_ts;
	/** 시작 */
	private int start;
	/** 디스플레이 */
	private int display;
	/** 정렬 */
	private String sort;
	/** 정렬 내림차 */
	private String order="desc";	
	/** 공유 번호 */
	private int share_no;
	/** 사용자 이름 */
	private String user_nm;
	/** 사용자 구분 */
	private String user_div;
	/** 기관 */
	private String institute;
	/** 부서 */
	private String dept;
	/** 직책 */
	private String job_pos;
	/** 전화번호 */
	private String tel_no;
	/**  */
	private String auth;
	/** 승인자 */
	private String grant_user;
	/** 설명 */
	private String use_description;
	/** 위치 컬럼 설명 */
	private String pos_column_desc;
	/** 리소스 List */
	private List<ResourceVO> resources;
	/** JSONArray */
	private JSONArray array;
	
	private String before_data_path;
	private String x_column;
	private String y_column;
	private String legend_info;
	private String delete_status;
	private String delete_fail_log;
	private String geometry_type;
}
