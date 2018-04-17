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


  /**
   * 태그 이름이 포함된 리스트 호출
   * 
   * @param name
   * @return
   */
  public static List<Tag> selectListLikeName(String name) {

    List<Tag> list = null;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      list = session.selectList("tags.selectListLikeName", name);
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return list;
  }

  /**
   * 태그 이름과 같은 태그 호출
   * 
   * @param name
   * @return
   */
  public static Tag selectByName(String name) {

    Tag result = null;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      result = session.selectOne("tags.selectByName", name);
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (session != null) {
        session.close();
      } // if end
    } // try~catch~finally end

    return result;
  }

  public static List<Tag> selectListByServiceNo(int servieNo) {

    List<Tag> list = null;
    SqlSession session = null;

    try {
      session = SqlSessionUtil.getSession();
      list = session.selectList("tags.selectListByServiceNo", servieNo);
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
