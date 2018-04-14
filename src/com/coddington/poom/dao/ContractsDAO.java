package com.coddington.poom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.Contract; 

public class ContractsDAO {
	public static List<Contract> selectContractList(Contract contract) {
		List<Contract> list = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			list = session.selectList("contracts.selectListByServiceNo", contract);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close();
			}//if end
		}//try~catch~finally end
		
		
		return list;
	}//() end
}
