package servlet.db;

public class FeedDTO {
  private int no;
  private String writer;
  private String writer_id;
  private String content;
  private String photoname;
  private String reg_date;

  public FeedDTO() {
    super();
    // TODO Auto-generated constructor stub
  }

  public FeedDTO(int no, String writer, String writer_id, String content, String photoname, String reg_date) {
    super();
    this.no = no;
    this.writer = writer;
    this.writer_id = writer_id;
    this.content = content;
    this.photoname = photoname;
    this.reg_date = reg_date;
  }

  @Override
  public String toString() {
    return "FeedDTO [no=" + no + ", writer=" + writer + ", writer_id=" + writer_id + ", content=" + content
        + ", photoname=" + photoname + ", reg_date=" + reg_date + "]";
  }

  public int getNo() {
    return no;
  }

  public void setNo(int no) {
    this.no = no;
  }

  public String getWriter() {
    return writer;
  }

  public void setWriter(String writer) {
    this.writer = writer;
  }

  public String getWriter_id() {
    return writer_id;
  }

  public void setWriter_id(String writer_id) {
    this.writer_id = writer_id;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getPhotoname() {
    return photoname;
  }

  public void setPhotoname(String photoname) {
    this.photoname = photoname;
  }

  public String getReg_date() {
    return reg_date;
  }

  public void setReg_date(String reg_date) {
    this.reg_date = reg_date;
  }

}
