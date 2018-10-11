package or.kosta.mvc.service;

import javax.servlet.http.HttpSession;

import or.kosta.dto.BikeUserLoginDTO;

public interface MemberService {
    // 01. ȸ�� �α��� üũ
    public boolean loginCheck(BikeUserLoginDTO dto, HttpSession session);
    // 02. ȸ�� �α��� ����
    public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto);
    // 03. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);
}