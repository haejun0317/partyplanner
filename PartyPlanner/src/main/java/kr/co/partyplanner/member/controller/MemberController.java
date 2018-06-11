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

import kr.co.partyplanner.event.domain.Goods;
import kr.co.partyplanner.event.service.GoodsService;
import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.dto.LoginDTO;
import kr.co.partyplanner.member.service.MemberServcie;
import kr.co.partyplanner.option.domain.Light;
import kr.co.partyplanner.option.domain.Mc;
import kr.co.partyplanner.option.domain.Sound;
import kr.co.partyplanner.option.domain.Staff;
import kr.co.partyplanner.option.domain.Stage;
import kr.co.partyplanner.option.service.LightService;
import kr.co.partyplanner.option.service.McService;
import kr.co.partyplanner.option.service.SoundService;
import kr.co.partyplanner.option.service.StaffService;
import kr.co.partyplanner.option.service.StageService;
import kr.co.partyplanner.party.service.PartyService;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;
import kr.co.partyplanner.partyjoin.service.PartyJoinService;
import kr.co.partyplanner.plangoods.domain.PlanGoods;
import kr.co.partyplanner.plangoods.service.PlanGoodsService;


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
	@Inject
	private McService mcService;
	@Inject
	private StaffService staffService;
	@Inject
	private SoundService soundService;
	@Inject
	private StageService stageService;
	@Inject
	private LightService lightService;
	@Inject
	private PlanGoodsService planGoodsService;
	@Inject
	private GoodsService goodsService;
	
	
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
	
	@RequestMapping(value = "/loginPage", method = RequestMethod.GET)
	public void login(Model model) {
		logger.info("Welcome home!");
		
	}
	
	/** 로그인 실패 했을 때 */
	   @RequestMapping(value = "/loginPagef", method = RequestMethod.GET)
	   public void loginfGET(Model model) throws Exception {
	      logger.info("result get............");
	   }
	   
	   
	   /** 로그인 부분 */
	   @RequestMapping(value = "/login", method = RequestMethod.GET)
	   public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
	      
	   }
	   
	   @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	   public String loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
	      Member mem = service.login(dto);
	      
	      if(mem != null) {
	         session.setAttribute("Member",mem);
	         if (dto.isUseCookie()) {
	            int amount = 60 * 60 * 24 * 7;

	            Date temp = new Date(System.currentTimeMillis() + (1000 * amount));
	            String sessionLimit = temp.toString();

	            service.keepLogin(mem.getId(), session.getId(), sessionLimit);
	         }
	         return "redirect:/";
	      }
	      
	      
	      return "redirect:/member/loginPagef";
	   }
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		Object obj = session.getAttribute("Member");
		
		if(obj != null) {
			Member mem = (Member)obj;
			session.removeAttribute("Member");
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
		
		return "redirect:/";
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
	
	/** 마이페이지 기획서 확인 */
	@RequestMapping(value="/plan")
	public void checkPlan(Model model,int num) throws Exception{
		EventPlan eventPlan = eventplanservice.read(num);
		
		Mc mc = null;
		Light light = null;
		Staff staff = null;
		Sound sound = null;
		Stage stage = null;
		if(eventPlan.getMc() != null) {
			mc = mcService.read(eventPlan.getMc());
		}
		if(eventPlan.getLight() != null) {
			light = lightService.read(eventPlan.getLight());
		}
		if(eventPlan.getStaff() != null) {
			staff = staffService.read(eventPlan.getStaff());		
		}
		if(eventPlan.getSound() != null) {
			sound = soundService.read(eventPlan.getSound());
		}
		if(eventPlan.getStage() != null) {
			stage = stageService.read(eventPlan.getStage());
		}
		
		List<PlanGoods> list = planGoodsService.listGodods(num);
		List<Goods> goodsList = new ArrayList<Goods>();
		for (PlanGoods planGoods : list) {
			Goods goods = goodsService.readGoods(planGoods.getGoodsName());
			goodsList.add(goods);
		}
		
		
		model.addAttribute("ePlan", eventPlan);
		model.addAttribute("mc", mc);
		model.addAttribute("light", light);
		model.addAttribute("staff", staff);
		model.addAttribute("sound", sound);
		model.addAttribute("stage", stage);
		model.addAttribute("pgList", list);
		model.addAttribute("goodsList", goodsList);
	}
	
	/** 회원가입 중복체크 비동기 통신 */
	@RequestMapping(value="/checkid.do")
	@ResponseBody
	public String checkId(String id) throws Exception{
		Member member = service.read(id);
		
		if(member == null) {
			return "success";
		}else {
			return "fail";
		}
	}

}
