package servlet.db;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import common.MybatisManager;

public class DAO {

//  public int joinMember(DTO dto) {
//    Connection conn = null;
//    PreparedStatement pstmt = null;
//    int result = 0;
//    try {
//      String sql = "insert into member(id,password,name,reg_date,birth,pwdhint,pwdanswer) values(?,?,?,?,?,?,?)";
//      conn= SqliteManager.getConn();
//      pstmt= conn.prepareStatement(sql);
//      pstmt.setString(1,dto.getId());
//      pstmt.setString(2,dto.getPassword());
//      pstmt.setString(3,dto.getName());
//      pstmt.setString(4,dto.getReg_date());
//      pstmt.setString(5,dto.getBirth());
//      pstmt.setString(6,dto.getPwdhint());
//      pstmt.setString(7,dto.getPwdanswer());
//      
//      result= pstmt.executeUpdate();
//    } catch (Exception e) {
//      e.printStackTrace();
//    } finally {
//      if (pstmt!= null)
//        try {
//          pstmt.close();
//        } catch (SQLException e) {
//          // TODO Auto-generated catch block
//          e.printStackTrace();
//        }
//      if (conn!= null)
//        try {
//          conn.close();
//        } catch (SQLException e) {
//          // TODO Auto-generated catch block
//          e.printStackTrace();
//        }
//    }
//    return result;
//  }
  
  public List<FeedDTO> getInit(){
    List<FeedDTO> lists= new ArrayList<>();
    SqlSession conn= null;
    Map map= new HashMap<>();
    map.put("foo", "no >0 and no< 4");
    try {
      conn= MybatisManager.getInstance().openSession();
      lists= conn.selectList("feedbook.init",map);
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (conn!= null) conn.close();
    }
    return lists;
  }
  
  public int joinMember(DTO dto){
    int result=0;
    SqlSession conn= null;
    try {
      conn= MybatisManager.getInstance().openSession();
      result= conn.insert("feedbook.joinMember",dto);
      conn.commit();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (conn!= null) conn.close();
    }
    return result;
  }

  public DTO login(DTO dto){
    DTO result= null;
    Map<String, String> map= new HashMap<>();
    map.put("id", dto.getId());
    map.put("password", dto.getPassword());
    SqlSession conn= null;
    try {
      conn= MybatisManager.getInstance().openSession();
      result= conn.selectOne("feedbook.login",map);
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (conn!= null) conn.close();
    }
    return result;
  }
}
