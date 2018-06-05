package kr.co.partyplanner.option.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.partyplanner.eventplan.domain.EventPlan;
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

@Controller
@RequestMapping("/option/*")
public class OptionController {

	Logger logger = Logger.getLogger(OptionController.class);
	
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

	@RequestMapping(value = "/plan", method = RequestMethod.GET)
	public void planGET(Model model, HttpSession session) throws Exception {
		
		List<Mc> mcList = mcService.listAll();
		List<Staff> staffList = staffService.listAll();
		List<Sound> soundList = soundService.listAll();
		List<Stage> stageList = stageService.listAll();
		List<Light> lightList = lightService.listAll();
		
		EventPlan ePlan = (EventPlan)session.getAttribute("ePlan");
		logger.info(ePlan);
		
		model.addAttribute("mcList", mcList);
		model.addAttribute("staffList", staffList);
		model.addAttribute("soundList", soundList);
		model.addAttribute("stageList", stageList);
		model.addAttribute("lightList", lightList);
	
	}
	
	@RequestMapping(value = "/plan", method = RequestMethod.POST)
	public String planPOST(@ModelAttribute EventPlan optionPlan, HttpSession session) throws Exception{
		
		EventPlan ePlan = (EventPlan)session.getAttribute("ePlan");
		ePlan.setMc(optionPlan.getMc());
		ePlan.setLight(optionPlan.getLight());
		ePlan.setSound(optionPlan.getSound());
		ePlan.setStaff(optionPlan.getStaff());
		ePlan.setStage(optionPlan.getStage());
		ePlan.setOptionSum(optionPlan.getOptionSum());
		session.setAttribute("totalPlan", ePlan);
		return "redirect:/event/check";
	}
	
	/*
	public String plan(EventPlan ePlan, RedirectAttributes rttr) throws Exception {
		logger.info("plan....post");
		logger.info(ePlan);
		
		rttr.addAttribute("schedule", ePlan.getSchedule());
		rttr.addAttribute("people", ePlan.getPeople());
		rttr.addAttribute("startday", ePlan.getStartday());
		rttr.addAttribute("endday", ePlan.getEndday());
		rttr.addAttribute("place", ePlan.getPlace());
		rttr.addAttribute("id", ePlan.getId());
		rttr.addAttribute("name", ePlan.getName());
		rttr.addAttribute("sum", ePlan.getSum());
		return "redirect:/option/plan";
	}
	*/
}