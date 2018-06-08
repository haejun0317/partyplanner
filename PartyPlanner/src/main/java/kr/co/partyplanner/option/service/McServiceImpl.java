package kr.co.partyplanner.option.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.option.dao.McDAO;
import kr.co.partyplanner.option.domain.Mc;

@Service
public class McServiceImpl implements McService {
	@Inject
	private McDAO dao;
	
	@Override
	public List<Mc> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public Mc read(String name) throws Exception {
		return dao.read(name);
	}

}
