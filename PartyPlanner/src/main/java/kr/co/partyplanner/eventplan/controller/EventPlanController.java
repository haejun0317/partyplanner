package kr.co.partyplanner.eventplan.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.plangoods.domain.PlanGoods;
import kr.co.partyplanner.plangoods.service.PlanGoodsService;

@Controller
@RequestMapping("/event/*")
public class EventPlanController {
	
	Logger logger = Logger.getLogger(EventPlanController.class);
	
	@Inject
	private EventPlanService service;
	
	@Inject
	private PlanGoodsService goodsService;
	
	@RequestMapping(value = "/save.do")
	@ResponseBody
	@Transactional
	public String plan(Model model,HttpSession session) throws Exception {
		logger.info("save....get");
		EventPlan ePlan = (EventPlan)session.getAttribute("ePlan");
		Map<String, Integer> goodsMap = (Map<String, Integer>)session.getAttribute("goodsMap");
		
		service.create(ePlan);
		if(!goodsMap.isEmpty()) {
			Set<String> keys = goodsMap.keySet();
			for (String goods : keys) {
				int amount = goodsMap.get(goods);
				PlanGoods pg = new PlanGoods();
				pg.setGoodsName(goods);
				pg.setAmount(amount);
				goodsService.create(pg);
			}
		}
		return "success";
	}
	
	
}
