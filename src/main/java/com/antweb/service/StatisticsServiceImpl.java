package com.antweb.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.antweb.domain.Criteria;
import com.antweb.domain.SearchCriteria;
import com.antweb.domain.StatisticsVO;
import com.antweb.persistence.StatisticsDao;

@Service
public class StatisticsServiceImpl implements StatisticsService {
	
	@Autowired
	private StatisticsDao dao;
	
	@Override
	public void insert(StatisticsVO vo) {
		dao.insert(vo);
	}

	@Override
	public int total() {
		return dao.total();
	}

	@Override
	public int selectCount(String keyword) {
		return dao.selectCount(keyword);
	}

	@Override
	public List<StatisticsVO> selectByDate(SearchCriteria cri) {
		return dao.selectByDate(cri);
	}

}
