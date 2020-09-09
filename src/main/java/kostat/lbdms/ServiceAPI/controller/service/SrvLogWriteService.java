/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package kostat.lbdms.ServiceAPI.controller.service;

import java.sql.SQLException;
import java.util.Map;

/**
 * @Class Name : SrvLogWriteService.java
 * @Description : SrvLogWriteService Class
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2019.05.30           최초생성
 *
 * @author SGIS+ 운영팀
 * @since 2019. 05.30
 * @version 1.0
 * @see
 *
 *  Copyright (C) by NeighborSystem All right reserved.
 */
public interface SrvLogWriteService {
	
	/**
	 * SrvLog 적재
	 * @param mapParameter
	 * @exception Exception
	 */
	public Map SrvLogWrite(Map mapParameter) throws SQLException;
	
}