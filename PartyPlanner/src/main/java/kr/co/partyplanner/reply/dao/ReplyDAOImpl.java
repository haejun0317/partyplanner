package kr.co.partyplanner.reply.dao;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.co.partyplanner.reply.domain.Reply;


@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "kr.co.partyplanner.mapper.replyMapper";

	@Override
	public List<Reply> listAll(int num) throws Exception {
		return session.selectList(namespace+".listAll",num);
	}

	@Override
	public void create(Reply reply) throws Exception {
		
		session.insert(namespace+".create", reply);
	}




}
