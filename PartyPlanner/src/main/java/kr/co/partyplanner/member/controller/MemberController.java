package kr.co.partyplanner.member.controller;

import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.dto.LoginDTO;
import kr.co.partyplanner.member.service.MemberServcie;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	Logger logger = Logger.getLogger(MemberController.class);
	
	@Inject
	private MemberServcie service;
	
	/** 회원 가입 부분 */
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public void registGET() throws Exception {
		logger.info("regist get............");
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registPOST(Member member) throws Exception {
		logger.info("regist post............");
		logger.info(member);

		service.regist(member);

		return "member/result";
	}
	
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public void registCompleteGET(Member member, Model model) throws Exception {
		logger.info("result get............");
	}
	
	/** 로그인 부분 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		Member mem = service.login(dto);
		if(mem == null) {
			return ;
		}
		model.addAttribute("Member",mem);
		
		if (dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 7;

			Date temp = new Date(System.currentTimeMillis() + (1000 * amount));
			String sessionLimit = temp.toString();

			service.keepLogin(mem.getId(), session.getId(), sessionLimit);
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			Member mem = (Member)obj;
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				Calendar cal = Calendar.getInstance();
				service.keepLogin(mem.getId(), session.getId(), cal.toString());
			}
		}
		
		return "member/logout";
	}

}
