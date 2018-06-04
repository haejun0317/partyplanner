package kr.co.partyplanner.member.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.service.MemberServcie;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	Logger logger = Logger.getLogger(MemberController.class);
	
	@Inject
	private MemberServcie service;
	
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
}
