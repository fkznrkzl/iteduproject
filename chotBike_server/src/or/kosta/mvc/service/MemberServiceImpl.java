package or.kosta.mvc.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import or.kosta.dto.BikeUserLoginDTO;
import or.kosta.mvc.dao.MemberDAO;

@Service // ���� Ŭ������ ���������� �����ϴ� service bean���� ���
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;

	// 01_01. ȸ�� �α���üũ
	@Override
	public boolean loginCheck(BikeUserLoginDTO dto, HttpSession session) {
		boolean result = memberDao.loginCheck(dto);
		if (result) { // true�� ��� ���ǿ� ���
			dto = viewMember(dto);
			// ���� ���� ���
			session.setAttribute("user_id", dto.getUser_id());
//			session.setAttribute("user_pwd", dto.getUser_pwd());
			session.setMaxInactiveInterval(60*60);
			session.getAttribute("user_id");
//			System.out.println("Session Success!" + session.getAttribute("user_id"));
		}
		System.out.println("�α��� ���� : " + result);
		return result;
	}

	// 01_02. ȸ�� �α��� ����
	@Override
	public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto) {
		return memberDao.viewMember(dto);
	}

	// 02. ȸ�� �α׾ƿ�
	@Override
	public void logout(HttpSession session) {
		// ���� ���� ���� ����
		session.removeAttribute("userId");
		// ���� ������ �ʱ�ȭ ��Ŵ
		session.invalidate();
	}

}
