package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class SqliteManager {

  private static Connection instance;
  
  public static Connection getConn(){
    if (instance==null){
      try {
        Class.forName("org.sqlite.JDBC");
        instance= DriverManager.getConnection("jdbc:sqlite:"+System.getProperty("user.home")+"/sqlite3db/feedbook.db");
      } catch (Exception e) {
        e.printStackTrace();
      }
      
    }
    return instance;
  }
}
