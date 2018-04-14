package com.coddington.poom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.Service;

public class ServicesDAO {
	public static List<Service> getServiceList() {
		List<Service> serviceList = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			serviceList = session.selectList("services.selectLogin");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close();
			}//if end
		}//try~catch~finally end
		
		
		return serviceList;
	}//() end
}
