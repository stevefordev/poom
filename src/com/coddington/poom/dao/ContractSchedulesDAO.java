package com.coddington.poom.dao;

import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;

public class ContractSchedulesDAO {

	public static int selectCountByContractNo(int contractNo) {
		int count = 0;

		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();

			count = session.selectOne("contractSchedules.selectCountByContractNo", contractNo);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			} // if end
		} // try~catch~finally end

		return count;
	}// () end

}
