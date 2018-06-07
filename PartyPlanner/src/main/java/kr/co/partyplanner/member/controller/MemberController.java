package kr.co.partyplanner.member.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.dto.LoginDTO;
import kr.co.partyplanner.member.service.MemberServcie;
import kr.co.partyplanner.party.service.PartyService;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;
import kr.co.partyplanner.partyjoin.service.PartyJoinService;
import kr.co.partyplanner.reply.service.ReplyService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	Logger logger = Logger.getLogger(MemberController.class);
	
	@Inject
	private MemberServcie service;
	
	@Inject
	private PartyJoinService partyjoinservice;
	
	@Inject
	private EventPlanService eventplanservice;
	
	@Inject
	private PartyService partyservice;
	
	
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
	
	
	/** 마이 페이지 (정보수정하는 곳) */
	@RequestMapping(value ="/myPage", method =RequestMethod.GET)
	public void plan(Model model,String id)throws Exception{
		logger.info("show all list");
		model.addAttribute("PartyJoin", partyjoinservice.listparty(id));
		model.addAttribute("allParty", partyservice.listAll());
		model.addAttribute("Party", partyservice.myPartyListAll(id));
		model.addAttribute("Member", service.mread(id));
		model.addAttribute("EventPlan", eventplanservice.listPlan(id));
	}
	
	/** member 수정하기 버튼 눌렀을 때 */
	@RequestMapping(value="/myPage", method=RequestMethod.POST)
	public String updatePost(Member member ,RedirectAttributes rttr, PartyJoin partyJoin) throws Exception {
		logger.info("업데이트");
		logger.info(member);
		service.update(member);
		return "redirect:/";
	}
	
	/** 파티 신청 수록 버튼 클릭 */
	@RequestMapping(value="/approve.do")
	@ResponseBody
	public PartyJoin approveUp(PartyJoin partyJoin) throws Exception{
		partyjoinservice.approveUpdate(partyJoin);
		
		return partyJoin;
	}
	
	/** 파티 신청자 목록 modal에 값 가져오는 비동기 통신 */
	@RequestMapping(value="/partyreq.do")
	@ResponseBody
	public List<Map<String, Object>> partyReq(int partyNum) throws Exception{
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		List<Member> mList = partyjoinservice.listReq(partyNum);
		for (Member member : mList) {
			Map<String, Object> map = new HashMap<String, Object>();
			PartyJoin partyjoin = partyjoinservice.read(member.getId(), partyNum);
			map.put("member", member);
			map.put("partyjoin", partyjoin);
			list.add(map);
		}
		logger.info(list);
		
		return list;
	}

}
