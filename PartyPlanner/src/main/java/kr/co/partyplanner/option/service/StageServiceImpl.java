package kr.co.partyplanner.option.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.partyplanner.option.dao.StageDAO;
import kr.co.partyplanner.option.domain.Stage;

@Service
public class StageServiceImpl implements StageService {

	@Inject
	private StageDAO dao;
	
	@Override
	public List<Stage> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public Stage read(String name) throws Exception {
		return dao.read(name);
	}

}
