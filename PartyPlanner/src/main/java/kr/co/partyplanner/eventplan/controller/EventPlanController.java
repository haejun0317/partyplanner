package kr.co.partyplanner.eventplan.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.eventplan.domain.EventPlan;

@Controller
@RequestMapping("/event/*")
public class EventPlanController {
	
	Logger logger = Logger.getLogger(EventPlanController.class);
	
	@Inject
	private EventPlanService service;
	
	@RequestMapping(value ="/misson", method =RequestMethod.GET)
	public void listAll(Model model, int num )throws Exception{
		logger.info("copt");

		logger.info("event 컨트롤러 실행중");
		EventPlan eventPlan = service.read(num);
		logger.info(eventPlan);
		model.addAttribute("plan", eventPlan);
		
	}
}
