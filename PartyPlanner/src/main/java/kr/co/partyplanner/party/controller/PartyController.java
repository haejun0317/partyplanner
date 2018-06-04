package kr.co.partyplanner.party.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.partyplanner.eventplan.service.EventPlanService;
import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.service.MemberServcie;
import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.party.domain.SearchCriteria;
import kr.co.partyplanner.party.service.PartyService;
import kr.co.partyplanner.partyjoin.domain.PartyJoin;
import kr.co.partyplanner.partyjoin.service.PartyJoinService;
import kr.co.partyplanner.reply.domain.Reply;
import kr.co.partyplanner.reply.service.ReplyService;


/**
 * /board요청 처리 세부 컨트롤러
 * @author 박현수
 */
@Controller
@RequestMapping("/party/*")
public class PartyController {
	private static final Logger logger = Logger.getLogger(PartyController.class);
	
	@Inject
	private PartyService partyservice;
	
	@Inject
	private MemberServcie memberservice;
	
	@Inject
	private PartyJoinService partyjoinservice;
	
	@Inject
	private EventPlanService eventplanservice;
	
	@Inject
	private ReplyService replyservice;
	
	
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list...........");
		model.addAttribute("list",partyservice.listAll());
	}
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void read(Model model,int num,String id) throws Exception{
		model.addAttribute("party",partyservice.read(num));
		model.addAttribute("member",memberservice.mread(id));
		model.addAttribute("reply",replyservice.listAll(num));
		
	}
	
	@RequestMapping(value="/read", produces="text/plain;charset=UTF-8", method=RequestMethod.POST)
	public String create(Reply reply ,RedirectAttributes rttr) throws Exception {
		logger.info("댓글 생성");
		logger.info(reply);
		replyservice.create(reply);
		rttr.addAttribute("num", reply.getPartyNum());
		rttr.addAttribute("id", reply.getId());
		return "redirect:/party/read";
	}
	
	@RequestMapping(value="/search.do")
	@ResponseBody
	public List<Party> search(SearchCriteria cri) throws Exception{
		logger.info(cri);
		List<Party> searchList = partyservice.search(cri);
		for (Party party : searchList) {
//			logger.info(party);
		}
		return searchList;
	}
	
	
	
	//여기까지 정훈이꺼
	/** 참가 신청 페이지 */
	@RequestMapping(value ="/party2", method =RequestMethod.GET)
	public void listAll(Model model,int num,String id)throws Exception{
		//String id추가 id
		logger.info("show all list");
		model.addAttribute("Party", partyservice.read(num));
		model.addAttribute("Member", memberservice.mread(id));
	}
	
	/** 참가 완료 페이지 */
	@RequestMapping(value ="/party3", method =RequestMethod.GET)
	public void clistAll(Model model,int num,String id)throws Exception{
		logger.info("show all clist");
		
		PartyJoin pj = new PartyJoin();
		pj.setId(id);
		pj.setNum(num);
		partyjoinservice.create(pj);
		
		model.addAttribute("Party", partyservice.read(num));
		model.addAttribute("Member", memberservice.mread(id));
	}
	
	/** 마이 페이지 (정보수정하는 곳) */
	@RequestMapping(value ="/party4", method =RequestMethod.GET)
	public void plan(Model model,String id)throws Exception{
		logger.info("show all list");
		model.addAttribute("PartyJoin", partyjoinservice.listparty(id));
		model.addAttribute("Party", partyservice.myPartyListAll(id));
		model.addAttribute("Member", memberservice.mread(id));
		model.addAttribute("EventPlan", eventplanservice.listPlan(id));
	}
	
	/** member 수정하기 버튼 눌렀을 때 */
	@RequestMapping(value="/party4", produces="text/plain;charset=UTF-8", method=RequestMethod.POST)
	public String updatePost(Member member ,RedirectAttributes rttr) throws Exception {
		logger.info("업데이트");
		logger.info(member);
		memberservice.update(member);
		return "redirect:/";
	}
	
	/** 파티 신청자 목록 modal에 값 가져오는 비동기 통신 */
	@RequestMapping(value="/partyreq.do")
	@ResponseBody
	public List<Member> partyReq(int partyNum) throws Exception{
		List<Member> mList = partyjoinservice.listReq(partyNum);
		
		return mList;
	}
	
	
	//여기까지 서영이꺼
	/** 파티 등록 */
	@RequestMapping(value="/registe", method=RequestMethod.GET)
		public void partyregisterGET(Party party, Model model, String id)throws Exception{
		
		model.addAttribute("member", memberservice.mread(id));
		logger.info("파티등록 get.......!");
	}

	@RequestMapping(value="/registe", method=RequestMethod.POST)
	public String partyregisterPost(Party party, Model model)throws Exception{
		
		
		logger.info("파티등록 post......!");
		logger.info(party.toString());
		
		model.addAttribute("result","success");

		return "redirect:/list";
	}
	
}
