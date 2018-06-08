package kr.co.partyplanner.contact.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.partyplanner.contact.domain.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "kr.co.partyplanner.mapper.ContactMapper";
	
	@Override
	public void regist(Contact contact) throws Exception {
		session.insert(namespace + ".regist", contact);
		
	}
}
