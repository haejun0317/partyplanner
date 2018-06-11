package kr.co.partyplanner.party.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	private ReplyService replyservice;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("show all list...........");
		model.addAttribute("list",partyservice.listAll());
	}

	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void read(Model model,int num, HttpSession session ) throws Exception{

		Party party = partyservice.read(num);
		Member member = (Member)session.getAttribute("Member");
		PartyJoin pj = partyjoinservice.read(member.getId(), num);
		String join;
		if(pj!=null) {
			join = "join";
		}else {
			join = "unjoin";
		}
		model.addAttribute("party",party);
		model.addAttribute("count",partyservice.joinCount(num));
		model.addAttribute("member",member);
		model.addAttribute("pmember",memberservice.mread(party.getMember()));
		model.addAttribute("replyList",replyservice.listAll(num));
		model.addAttribute("join", join);
		
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
	
	@RequestMapping(value="/comment", produces="text/plain;charset=UTF-8", method=RequestMethod.POST)
	public String comment(Reply reply ,RedirectAttributes rttr) throws Exception {
		logger.info("댓글 생성");
		logger.info(reply);
		replyservice.createComment(reply);
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
	@RequestMapping(value ="/partyjoin", method =RequestMethod.GET)
	public void listAll(Model model,int num,HttpSession session)throws Exception{
		//String id추가 id
		Member member = (Member)session.getAttribute("Member");
		logger.info("show all list");
		model.addAttribute("Party", partyservice.read(num));
		model.addAttribute("Member", member);
	}
	
	/** 참가 완료 페이지 */
	@RequestMapping(value ="/joinCompleted", method =RequestMethod.GET)
	public void clistAll(Model model,int num,HttpSession session)throws Exception{
		Member member = (Member)session.getAttribute("Member");
		PartyJoin pj = new PartyJoin();
		pj.setId(member.getId());
		pj.setNum(num);
		partyjoinservice.create(pj);
		
		model.addAttribute("Party", partyservice.read(num));
		model.addAttribute("Member", member);
	}
	
	
	
	//여기까지 서영이꺼
	/** 파티 등록 */
	/** 파티 등록 */
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public void registGET(Model model, HttpSession session) throws Exception {
		Member member = (Member)session.getAttribute("Member");
		model.addAttribute("member", memberservice.read(member.getId()));
		logger.info("파티등록 get.......!");

	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registPost(Party party,MultipartFile upfile, Model model, RedirectAttributes rttr) throws Exception {
		
		logger.info("파티등록 post.............!");
		logger.info("전달받은 객체:" + party);
		logger.info(party.toString());
		logger.info("------------------");
		logger.info("originalName" + upfile.getOriginalFilename());
		logger.info("size : " + upfile.getSize());
		logger.info("contentType : " + upfile.getContentType());
		
		partyservice.create(party); 
		
		uploadFile(upfile.getOriginalFilename(), upfile.getBytes());
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/party/list";
	}
	
	private void uploadFile(String originalName, byte[] fileData) throws Exception {

		String savedName = originalName;

		File target = new File(uploadPath, savedName);

		FileCopyUtils.copy(fileData, target);
	}
	
}
