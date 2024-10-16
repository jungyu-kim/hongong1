package com.yedam.service;

import java.util.List;

import com.yedam.vo.MemberVO;

// 업무처리로직.
public interface MemberService { //인터페이스선언이유 
	boolean addMember(MemberVO member);
	boolean retireMember(String memberid);
	
	//회원목록출력메소드.
	List<MemberVO> memberList();
	
}
