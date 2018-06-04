package kr.co.partyplanner.option.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public void planGET(Model model, EventPlan eplan) throws Exception {
		List<Mc> mcList = mcService.listAll();
		List<Staff> staffList = staffService.listAll();
		List<Sound> soundList = soundService.listAll();
		List<Stage> stageList = stageService.listAll();
		List<Light> lightList = lightService.listAll();
		
		logger.info(eplan);
		model.addAttribute("mcList", mcList);
		model.addAttribute("staffList", staffList);
		model.addAttribute("soundList", soundList);
		model.addAttribute("stageList", stageList);
		model.addAttribute("lightList", lightList);
		model.addAttribute("eplan", eplan);
	}
}