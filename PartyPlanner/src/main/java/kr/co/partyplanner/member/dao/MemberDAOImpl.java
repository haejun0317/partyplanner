package kr.co.partyplanner.member.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.member.domain.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.MemberMapper";
	
	/** 회원가입 회원생성 */
	@Override
	public void create(Member member) throws Exception {
		session.insert(namespace + ".create", member);
	}
	
	/** 회원정보 리스트 출력*/
	@Override
	public List<Member> member() throws Exception {
		return session.selectList(namespace +".member");
	}

	/** 아이디로  회원정보 불러오기 */
	@Override
	public Member mread(String id) throws Exception {
		return session.selectOne(namespace+".mread" ,id);
	}

	/** 회원 정보 수정 메소드*/
	@Override
	public void update(Member member) throws Exception {
		 session.update(namespace+".update" , member);
		
	}

}
