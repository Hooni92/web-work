package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//3. 요청 맵핑 (처리할 요청 경로를 작성한다.) 반드시 / 로 시작을 해야하고 프로젝트명은 쓰지 않는다.
@WebServlet("/send")
public class SendServlet extends HttpServlet {//1. HttpServlet 클래스를 상속 받는다.
	
	//2. service()메소드 오버라이드
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("감히 요청을해?");
		//msg 라는 파라미터명으로 전송되는 문자열 읽어오기
		req.setCharacterEncoding("utf-8");
		String a=req.getParameter("msg");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		//요청을 한 클리언트에게 문자열을 응답할 객체얻어오기
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>제목 입니다</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<p>oh~</p>");
		pw.println("<p>who are you?</p>");
		pw.println("<p>누구냐 넌?</p>");
		pw.println("<img src='images/kim1.png'>");
		pw.println("<a href='/Hello'>인덱스로 가기</a>");
		pw.println("</body>");
		pw.println("</html>");
		pw.flush();//방출
		pw.close();//닫아주기
	}
}
