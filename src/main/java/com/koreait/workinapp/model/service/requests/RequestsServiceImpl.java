package com.koreait.workinapp.model.service.requests;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreait.workinapp.domain.Requests;
import com.koreait.workinapp.model.repository.requests.RequestsDAO;

@Service
public class RequestsServiceImpl implements RequestsService{
	
	@Autowired
	private RequestsDAO requestsDAO;
	
	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Requests select(int req_pk) {
		// TODO Auto-generated method stub
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
		return requestsDAO.selectByEmployee(e_pk);
	}

	@Override
	public void insert(Requests requests) {
		requestsDAO.insert(requests);
	}

	@Override
	public List selectNoWork(int e_pk) {
		return requestsDAO.selectNoWork(e_pk);
	}

	@Override
	public List selectNoDayoff(int e_pk) {
		return requestsDAO.selectNoDayoff(e_pk);
	}

	@Override
	public List selectOkRequests(int e_pk) {
		return requestsDAO.selectOkRequests(e_pk);
	}

	@Override
	public List selectDayoff(int e_pk) {
		return requestsDAO.selectDayoff(e_pk);
	}

	@Override
	public List selectWork(int e_pk) {
		return requestsDAO.selectWork(e_pk);
	}



}
