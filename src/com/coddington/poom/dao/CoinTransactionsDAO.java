package com.coddington.poom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.CoinTransaction;

public class CoinTransactionsDAO {
	public static List<CoinTransaction> selectListOutcome() {
		List<CoinTransaction> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("coinTransactions.selectListOutcome");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	public static List<CoinTransaction> selectList() {
		List<CoinTransaction> list = null;
		SqlSession session = null;
		try {
			session = SqlSessionUtil.getSession();
			list = session.selectList("coinTransactions.selectList");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
}
