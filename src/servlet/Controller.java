package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import servlet.db.DAO;
import servlet.db.DTO;

@WebServlet("/servlet/*")
public class Controller extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String url = request.getRequestURI();
    DAO dao = new DAO();
    if (url.indexOf("join.do") != -1) {
      String id = request.getParameter("id");
      String password = request.getParameter("password");
      String name = request.getParameter("name");
      String reg_date = request.getParameter("");
      String birth = "datetime('now','localtime')";
      String pwdhint = request.getParameter("");
      String pwdanswer = request.getParameter("");

      DTO dto = new DTO();
      dto.setId(id);
      dto.setPassword(password);
      dto.setName(name);
      dto.setReg_date(reg_date);
      dto.setBirth(birth);
      dto.setPwdhint(pwdhint);
      dto.setPwdanswer(pwdanswer);

      int result = dao.joinMember(dto);
      String msg = "";
      if (result == 1) {
        msg = "회원 가입이 정상적으로 처리되었습니다.";
      } else if (result == 0) {
        msg = "회원 가입중 오류가 발생했습니다.";
      }

      RequestDispatcher rd = request.getRequestDispatcher("/login/LoginForm.jsp");
      rd.forward(request, response);
    } else if (url.indexOf("login.do") != -1) {
      HttpSession session = request.getSession();
      String id = request.getParameter("id");
      String password = request.getParameter("pwd");
      DTO dto = new DTO();
      dto.setId(id);
      dto.setPassword(password);
      DTO result = new DTO();
      result = dao.login(dto);
      String page = "";
      if (result != null) {
        session.setAttribute("login", result);
        page = request.getContextPath() + "/feed.jsp";
      } else {
        page = request.getContextPath() + "/login/login_fail.jsp";
      }

      response.sendRedirect(page);
    } else if (url.indexOf("logout.do")!= -1){
      HttpSession session= request.getSession();
      session.removeAttribute("login");
      response.sendRedirect(request.getContextPath()+"/feed.jsp");
    } else if (url.indexOf("getfeed.do")!= -1){
      
    }

  }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request, response);
  }

}
