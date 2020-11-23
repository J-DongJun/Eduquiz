package com.spring.project.member.service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.dao.DataAccessException;

import com.spring.project.member.vo.MemberVO;

public interface MemberService {
	
	 public List listMembers() throws DataAccessException;
	 // 전체회원 조회
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 // 회원정보 추가
	 public int removeMember(String id) throws DataAccessException;
	 // 회원정보 삭제
	 public MemberVO loginProc(String LgId, String LgPw) throws Exception;
	 // 로그인으로 회원정보 조회
	 public int idCheck(String RgId) throws Exception;
	 // 아이디 중복확인
	 public int updatePw(MemberVO memberVO) throws DataAccessException;
	 // 비밀번호 변경
	 public void keepLogin(String id, String sessionId, Date sessionLimit) throws Exception;
	 // 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
	 public MemberVO checkUserWithSessionKey(String sessionId) throws Exception;
}
