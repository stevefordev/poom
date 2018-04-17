package com.coddington.poom.dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import com.coddington.poom.util.SqlSessionUtil;
import com.coddington.poom.vo.Tag;

public class TagsDAO {
  public static int insert(Tag tag) {

    int result = 0;
    SqlSession session = null;
    try {
      session = SqlSessionUtil.getSession();

      result = session.insert("tags.insert", tag);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }// () end

  public static List<Tag> selectListByName(String name) {

    List<Tag> list = null;

    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();

      list = session.selectList("tags.selectListByName", name);

    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return list;
  }
}
