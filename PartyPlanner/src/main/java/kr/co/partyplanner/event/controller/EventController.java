package kr.co.partyplanner.event.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.partyplanner.event.domain.Event;
import kr.co.partyplanner.event.domain.EventSchedule;
import kr.co.partyplanner.event.domain.Goods;
import kr.co.partyplanner.event.domain.ScheduleOption;
import kr.co.partyplanner.event.service.EventScheduleService;
import kr.co.partyplanner.event.service.EventService;
import kr.co.partyplanner.event.service.GoodsService;
import kr.co.partyplanner.event.service.ScheduleOptionService;
import kr.co.partyplanner.eventplan.domain.EventPlan;
import kr.co.partyplanner.member.controller.MemberController;
import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.plangoods.domain.PlanGoods;

@Controller
@RequestMapping("/event/*")
public class EventController {

	Logger logger = Logger.getLogger(EventController.class);

	@Inject
	private EventService evnetService;

	@Inject
	private EventScheduleService eventScheduleService;

	@Inject
	private ScheduleOptionService scheduleOptionService;
	
	@Inject
	private GoodsService goodsService;

	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public void registGET(Model model) throws Exception {
		logger.info("select get............");
		List<Event> list = evnetService.listAll();

		model.addAttribute("list", list);
	}

	@RequestMapping(value = "/plan", method = RequestMethod.GET)
	public void plan(Model model, String event) throws Exception {
		logger.info("cus............");
		Event e = evnetService.read(event);


		model.addAttribute("event", e);
	}
	
	@RequestMapping(value = "/plan", method = RequestMethod.POST)
	public String plan(EventPlan ePlan,String totalGoods, HttpSession session) throws Exception {
		logger.info("plan....post");
		logger.info(ePlan);
		logger.info(totalGoods);
		
		List<PlanGoods> pgList = new ArrayList<PlanGoods>();
		String[] goodsArray = totalGoods.split("##");
		for (String string : goodsArray) {
			if(string.length() > 0) {
				String[] array = string.split("\\$\\$");
				String amount = array[0];
				String good = array[1];
				PlanGoods pg = new PlanGoods();
				pg.setAmount(Integer.parseInt(amount));
				pg.setGoodsName(good);
				pgList.add(pg);
			}
		}
		
		List<Goods> goodsList = goodsService.listAll();
		session.setAttribute("goodsList",goodsList);
		session.setAttribute("pgList", pgList);
		session.setAttribute("ePlan", ePlan);
		return "redirect:/option/plan";
	}
	
	@RequestMapping(value = "/option", method = RequestMethod.GET)
	public void option(Model model) throws Exception {
		logger.info("cus............");
	}

	/** 식순 검색하는 modal 비동기 통신 */
	@RequestMapping(value = "/search.do")
	@ResponseBody
	public List<EventSchedule> search(String name) throws Exception {

		List<EventSchedule> slist = eventScheduleService.searchList(name);
		for (EventSchedule eventSchedule : slist) {
			logger.info(eventSchedule);
		}
		return slist;
	}

	/** 기본 식순 제공하는 것과, 기본 식순 불러 오는 비동기 통신 */
	@RequestMapping(value = "/call.do")
	@ResponseBody
	public List<EventSchedule> eventCall(String name) throws Exception {

		List<EventSchedule> basicList = eventScheduleService.eventCallList(name);
		for (EventSchedule eventSchedule : basicList) {
			logger.info(eventSchedule);
		}
		return basicList;
	}

	/** 행사별->식순별->옵션사항을 불러 오는 비동기 통신 */
	@RequestMapping(value = "/optioncall.do")
	@ResponseBody
	public List<ScheduleOption> optionCall() throws Exception {
		List<ScheduleOption> optionList = scheduleOptionService.listAll();
		for (ScheduleOption scheduleOption : optionList) {
			logger.info(scheduleOption);
		}
		return optionList;
	}
	
	/** 행사별->식순 검색해서 리스트 불러 오는 비동기 통신 */
	@RequestMapping(value = "/searchlist.do")
	@ResponseBody
	public List<EventSchedule> searchListCall(String event, String item) throws Exception {
		List<EventSchedule> searchList = eventScheduleService.eventSearchList(event, item);
		for (EventSchedule eventSchedule : searchList) {
			logger.info(eventSchedule);
		}
		return searchList;
	}
	
	/** 식순 별 물품 리스트 불러 오는 비동기 통신 */
	@RequestMapping(value = "/searchgoods.do")
	@ResponseBody
	public List<Goods> searchGoodsCall(String name) throws Exception {
		List<Goods> searchGoods = goodsService.read(name);
		
		for (Goods goods : searchGoods) {
			logger.info(goods);
		}
		return searchGoods;
	}
}
