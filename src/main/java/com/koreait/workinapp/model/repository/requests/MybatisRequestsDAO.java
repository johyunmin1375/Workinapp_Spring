package com.koreait.workinapp.model.repository.requests;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.koreait.workinapp.domain.Requests;

@Repository
public class MybatisRequestsDAO implements RequestsDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Requests select(int req_pk) {
		return null;
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List selectByWork() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectByDayoff() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectOneWork(int e_pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectOneDayoff(int e_pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectByStatus(int e_pk) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectByEmployee(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectByEmployee",e_pk);
	}

	@Override
	public void insert(Requests requests) {
		sqlSessionTemplate.insert("Requests.insert",requests);
		
	}

	@Override
	public List selectNoWork(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectNoWork",e_pk);
	}

	@Override
	public List selectNoDayoff(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectNoDayoff",e_pk);
	}

	@Override
	public List selectOkRequests(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectOkRequests",e_pk);
	}

	@Override
	public List selectDayoff(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectDayoff",e_pk);
	}

	@Override
	public List selectWork(int e_pk) {
		return sqlSessionTemplate.selectList("Requests.selectWork",e_pk);
	}



}
