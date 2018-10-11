package or.kosta.mvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import or.kosta.dto.BikeUserLoginDTO;
import or.kosta.mvc.dao.MemberDAO;

@Service // 현재 클래스를 스프링에서 관리하는 service bean으로 등록
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;

	// 01_01. 회원 로그인체크
	@Override
	public boolean loginCheck(BikeUserLoginDTO dto, HttpSession session) {
		boolean result = memberDao.loginCheck(dto);
		if (result) { // true일 경우 세션에 등록
			dto = viewMember(dto);
			// 세션 변수 등록
			session.setAttribute("user_id", dto.getUser_id());
//			session.setAttribute("user_pwd", dto.getUser_pwd());
			session.setMaxInactiveInterval(60*60);
			session.getAttribute("user_id");
//			System.out.println("Session Success!" + session.getAttribute("user_id"));
		}
		System.out.println("로그인 서비스 : " + result);
		return result;
	}

	// 01_02. 회원 로그인 정보
	@Override
	public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto) {
		return memberDao.viewMember(dto);
	}

	// 02. 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
		session.removeAttribute("userId");
		// 세션 정보를 초기화 시킴
		session.invalidate();
	}

}
