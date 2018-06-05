package kr.co.partyplanner.reply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.reply.dao.ReplyDAO;
import kr.co.partyplanner.reply.domain.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	/** 댓글 목록 리스트 출력*/
	@Override
	public List<Reply> listAll(int num) throws Exception {
		return dao.listAll(num);
	}

	@Override
	public void create(Reply reply) throws Exception {
		dao.create(reply);
	}

	@Override
	public void createComment(Reply reply) throws Exception {
		dao.createComment(reply);
	}


}
