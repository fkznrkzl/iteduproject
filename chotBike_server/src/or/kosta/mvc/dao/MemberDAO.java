package or.kosta.mvc.dao;

import javax.servlet.http.HttpSession;

import or.kosta.dto.BikeUserLoginDTO;

public interface MemberDAO {
	// 01_01. 회원 로그인 체크
    public boolean loginCheck(BikeUserLoginDTO dto);
    // 01_02. 회원 로그인 정보
    public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
}
