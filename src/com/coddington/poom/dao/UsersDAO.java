package com.coddington.poom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.User;

public class UsersDAO {
	/**
	 * 유저 가입
	 * @param user
	 * @return
	 */
	public static int insert(User user) {
		int result = 0;

		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			result = session.insert("users.insert", user);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null)
				session.close();
		} // try~catch~finally end

		return result;

	}

	/***
	 * 
	 * @param user
	 * @return
	 */
	public static User selectLogin(User user) {
		User loginUser= null;

		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();

			loginUser = session.selectOne("users.selectLogin", user);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			} // if end
		} // try~catch~finally end

		return loginUser;
	}// selectLogin() end

	public static List<User> selectListAll() {
		List<User> list = null;

		SqlSession session = null;

		try {
			session = SqlSessionUtil.getSession();

			list = session.selectList("users.selectListAll");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (session != null) {
				session.close();
			} // if end
		} // try~catch~finally end

		return list;
	}// selectLogin() end
}
