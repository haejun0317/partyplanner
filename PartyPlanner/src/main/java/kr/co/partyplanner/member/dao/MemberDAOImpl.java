package kr.co.partyplanner.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.member.domain.Member;
import kr.co.partyplanner.member.dto.LoginDTO;

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

	/** 회원정보 리스트 출력 */
	@Override
	public List<Member> member() throws Exception {
		return session.selectList(namespace + ".member");
	}

	/** 아이디로 회원정보 불러오기 */
	@Override
	public Member mread(String id) throws Exception {
		return session.selectOne(namespace + ".mread", id);
	}

	/** 회원 정보 수정 메소드 */
	@Override
	public void update(Member member) throws Exception {
		session.update(namespace + ".update", member);

	}

	/** Login 아이디와 비밀번호 필요 */
	@Override
	public Member login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace + ".login", dto);
	}

	/** 자동 로그인 구현 */

	@Override
	public void keepLogin(String id, String sessionId, String next) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("id", id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		session.update(namespace + ".keepLogin", paramMap);
	}

	@Override
	public Member checkUserWithSessionKey(String value) {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

}
