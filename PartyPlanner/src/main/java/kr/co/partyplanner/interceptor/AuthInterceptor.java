package kr.co.partyplanner.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.service.MemberServcie;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	
	private static final Logger logger = Logger.getLogger(AuthInterceptor.class);
	
	@Inject
	private MemberServcie service;
	
	@Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	         throws Exception {
	      HttpSession session = request.getSession();
	      
	      if(session.getAttribute("Member") == null) {
	         logger.info("current user is not logined");
	         
	         saveDest(request);
	         
	         Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
	         
	         if(loginCookie != null) {
	        	 Member member = service.checkLoginBefore(loginCookie.getValue());
	        	 logger.info("member: "+member);
	        	 
	        	 if(member!=null) {
	        		 session.setAttribute("login", member);
	        		 return true;
	        	 }
	        	 
	         }
	         
	         //회원이 아니면 회원이 원하는 곳이 아닌
	         //밑에 정해진 주소로 이동하게 함.
	         response.sendRedirect("/member/loginPage");
	         return false;
	      }
	      return true;
	   }
	   
	   private void saveDest(HttpServletRequest req) {
	      String uri = req.getRequestURI();
	      
	      String query = req.getQueryString();
	      
	      if(query == null || query.equals("null")) {
	         query = "";
	      }else {
	         query = "?" + query;
	      }
	      
	      if(req.getMethod().equals("GET")) {
	         logger.info("dest: " + (uri + query));
	         req.getSession().setAttribute("dest", query);
	      }
	   }
}
