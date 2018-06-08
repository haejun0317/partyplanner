package kr.co.partyplanner.contact.controller;


import javax.inject.Inject;


import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.partyplanner.contact.domain.Contact;
import kr.co.partyplanner.contact.service.ContactService;
import kr.co.partyplanner.member.domain.Member;

@Controller
@RequestMapping("/contact/*")
public class ContactController {

	Logger logger = Logger.getLogger(ContactController.class);

	@Inject
	private ContactService service;


	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public void registGET(Model model) throws Exception {
		logger.info("contact get............");
		
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String registPOST(Contact contact) throws Exception {
		logger.info("regist post............");
		logger.info(contact);

		service.regist(contact);

		return "redirect:/";
	}

}
