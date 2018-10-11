package or.kosta.mvc.dao;

import javax.servlet.http.HttpSession;

import or.kosta.dto.BikeUserLoginDTO;

public interface MemberDAO {
	// 01_01. ȸ�� �α��� üũ
    public boolean loginCheck(BikeUserLoginDTO dto);
    // 01_02. ȸ�� �α��� ����
    public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto);
    // 02. ȸ�� �α׾ƿ�
    public void logout(HttpSession session);
}
