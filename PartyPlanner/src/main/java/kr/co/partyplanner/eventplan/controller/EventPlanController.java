package kr.co.partyplanner.eventplan.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.partyplanner.event.domain.Goods;
import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.plangoods.domain.PlanGoods;

@Controller
@RequestMapping("/event/*")
public class EventPlanController {
	
	Logger logger = Logger.getLogger(EventPlanController.class);
	
	@Inject
	private EventPlanService service;
	
	@RequestMapping(value ="/check", method =RequestMethod.GET)
	public void ChecklistAll(Model model, HttpSession session)throws Exception{
		
		EventPlan ePlan = (EventPlan)session.getAttribute("ePlan");
		List<PlanGoods> pgList = (List<PlanGoods>) session.getAttribute("pgList");
		for (PlanGoods planGoods : pgList) {
			logger.info(planGoods);
		}
		List<Goods> goodsList = (List<Goods>) session.getAttribute("goodsList");
		
		model.addAttribute("ePlan", ePlan);
		model.addAttribute("pgList", pgList);
		model.addAttribute("goodsList",goodsList);
		logger.info(ePlan);
		
	}
}
