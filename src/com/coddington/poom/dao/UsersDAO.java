package com.coddington.poom.dao;

import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.User;

public class UsersDAO {
	public static User selectLogin(User user) {
		User loginMember = null;
		
		SqlSession session = null;
		
		try {
			session = SqlSessionUtil.getSession();
			
			loginMember = session.selectOne("users.selectLogin", user);
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) {
				session.close();
			}//if end
		}//try~catch~finally end
		
		
		return loginMember;
	}//selectLogin() end
}
