package com.coddington.poom.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.Schedule;

public class SchedulesDAO {

  public static List<Schedule> selectListByServiceNo(int no) {

    List<Schedule> list = null;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      list = session.selectList("schedules.selectListByServiceNo", no);
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end
    return list;
  }// () end

  public static int insert(Schedule schedule) {

    int result = 0;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      result = session.insert("schedules.insert", schedule);
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
