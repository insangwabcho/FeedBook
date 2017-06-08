package servlet.db;

public class DTO {
  private int no;
  private String id;
  private String password;
  private String name;
  private String reg_date;
  private String birth;
  private String pwdhint;
  private String pwdanswer;

  public DTO() {
    super();
    // TODO Auto-generated constructor stub
  }

  public DTO(int no, String id, String password, String name, String reg_date, String birth, String pwdhint,
      String pwdanswer) {
    super();
    this.no = no;
    this.id = id;
    this.password = password;
    this.name = name;
    this.reg_date = reg_date;
    this.birth = birth;
    this.pwdhint = pwdhint;
    this.pwdanswer = pwdanswer;
  }

  @Override
  public String toString() {
    return "DTO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + ", reg_date=" + reg_date
        + ", birth=" + birth + ", pwdhint=" + pwdhint + ", pwdanswer=" + pwdanswer + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getReg_date() {
    return reg_date;
  }

  public void setReg_date(String reg_date) {
    this.reg_date = reg_date;
  }

  public String getBirth() {
    return birth;
  }

  public void setBirth(String birth) {
    this.birth = birth;
  }

  public String getPwdhint() {
    return pwdhint;
  }

  public void setPwdhint(String pwdhint) {
    this.pwdhint = pwdhint;
  }

  public String getPwdanswer() {
    return pwdanswer;
  }

  public void setPwdanswer(String pwdanswer) {
    this.pwdanswer = pwdanswer;
  }

}
