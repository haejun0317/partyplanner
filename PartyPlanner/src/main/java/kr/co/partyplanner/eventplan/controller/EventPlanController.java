package kr.co.partyplanner.eventplan.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.eventplan.service.EventPlanService;

@Controller
@RequestMapping("/event/*")
public class EventPlanController {
	
	Logger logger = Logger.getLogger(EventPlanController.class);
	
	@Inject
	private EventPlanService service;
	
	@RequestMapping(value = "/save.do")
	@ResponseBody
	public String plan(Model model,HttpSession session) throws Exception {
		logger.info("save....get");
		EventPlan ePlan = (EventPlan)session.getAttribute("ePlan");
		
		service.create(ePlan);
		
		return "success";
	}
	
	
}
