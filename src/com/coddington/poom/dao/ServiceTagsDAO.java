package com.coddington.poom.dao;

import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.ServiceTag;

public class ServiceTagsDAO {
  public static int deleteByServiceNo(int serviceNo) {
    int result = 0;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      result = session.delete("serviceTags.deleteByServiceNo", serviceNo);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }

  public static int insert(ServiceTag serviceTag) {
    int result = 0;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      result = session.insert("serviceTags.insert", serviceTag);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }
}
