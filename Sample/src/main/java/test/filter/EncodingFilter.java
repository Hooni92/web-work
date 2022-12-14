package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
//Step04_Final/하위의 모든 요청
@WebFilter("/*")
public class EncodingFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	/*
	 *  request 에 들어오는 참조값은 원래 HttpServletRequest 객체의 참조값이다.
	 *  response 에 들어오는 참조값은 원래 HttpServletResponse 객체의 참조값이다.
	 */

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//1. 만일 인코딩 설정이 되지 않았다면
		if(request.getCharacterEncoding()==null) {
			//POST방식 전송했을때 한글 깨짐 방지
			request.setCharacterEncoding("utf-8");
		}
		//2. 요청의 흐름 이어가기
		chain.doFilter(request, response);
		
	}
	// init 메소드는 이 필터가 최초 호출될때 한번만 호출되는 메소드
	// 필터에서 어떤 동작을 준비하고 싶을때 한다.
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
