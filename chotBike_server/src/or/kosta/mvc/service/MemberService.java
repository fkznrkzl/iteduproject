package or.kosta.mvc.service;

import javax.servlet.http.HttpSession;

import or.kosta.dto.BikeUserLoginDTO;

public interface MemberService {
    // 01. 회원 로그인 체크
    public boolean loginCheck(BikeUserLoginDTO dto, HttpSession session);
    // 02. 회원 로그인 정보
    public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto);
    // 03. 회원 로그아웃
    public void logout(HttpSession session);
}