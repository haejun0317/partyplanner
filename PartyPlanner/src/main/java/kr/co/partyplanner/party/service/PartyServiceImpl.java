package kr.co.partyplanner.party.service;

import java.util.List;

import javax.inject.Inject;

import org.aspectj.apache.bcel.generic.ReturnaddressType;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.party.dao.PartyDao;
import kr.co.partyplanner.party.domain.Party;
import kr.co.partyplanner.party.domain.SearchCriteria;


@Repository
public class PartyServiceImpl implements PartyService {

	@Inject
	private PartyDao dao;
	

	/**파티 전체 보기*/
	@Override
	public List<Party> listAll() throws Exception {
		return dao.listAll();
	}
	/**파티 선택 보기*/
	@Override
	public Party read(int num) throws Exception{
		
		return dao.read(num);
	}
	/**파티 검색*/
	@Override
	public List<Party> search(SearchCriteria cri) throws Exception{
		
		return dao.search(cri);
	}
	
	/** 마이페이지의 참여 파티 전체 목록 출력 */
	@Override
	public List<Party> myPartyListAll(String id) throws Exception {
		return dao.myPartyListAll(id);
	}
	/** 참여인원 카운트 */
	@Override
	public int joinCount(int num) throws Exception {
		return dao.joinCount(num);
	}
	
}
