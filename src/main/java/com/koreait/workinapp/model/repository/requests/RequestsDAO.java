package com.koreait.workinapp.model.repository.requests;

import java.util.List;

import com.koreait.workinapp.domain.Requests;

public interface RequestsDAO {
	public List selectAll(); //다
	public Requests select(int req_pk);//한건가져오기
	public void update(); //수정
	public void delete(); //삭제
	
	public List selectByWork();//근무
	public List selectByDayoff();//휴가
	
	public List selectOneWork(int e_pk);//개인 근무
	public List selectOneDayoff(int e_pk);//개인 휴가
	
	public List selectByStatus(int e_pk);
	
	public List selectByEmployee(int e_pk);//한 사원의 전체 요청
	
	public void insert(Requests requests); //요청 등록
	
	public List selectNoWork(int e_pk);
	public List selectNoDayoff(int e_pk);
	public List selectOkRequests(int e_pk);
	
	public List selectDayoff(int e_pk);
	public List selectWork(int e_pk);

}
