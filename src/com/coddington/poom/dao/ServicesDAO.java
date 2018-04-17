package com.coddington.poom.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.Service;

public class ServicesDAO {
  public static int update(Service service) {
    int result = 0;

    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();

      result = session.update("services.update", service);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }// () end

  public static int insert(Service service) {
    int result = 0;

    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();

      result = session.insert("services.insert", service);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }// () end

  public static Service selectByServiceNoAndUserNo(Service service) {

    Service result = null;
    SqlSession session = null;

    try {

      session = SqlSessionUtil.getSession();
      result = session.selectOne("services.selectByServiceNoAndUserNo", service);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }// () end

  public static List<Service> selectListAll() {

    List<Service> list = null;
    SqlSession session = null;

    try {

      session = SqlSessionUtil.getSession();
      list = session.selectList("services.selectListAll");

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return list;
  }// () end
}
