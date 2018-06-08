package kr.co.partyplanner.contact.dao;

import java.util.List;

import kr.co.partyplanner.contact.domain.Contact;

public interface ContactDAO {
	
	/** 협력업체가 글 작성 하기 */
	public void regist(Contact contact) throws Exception;

}
