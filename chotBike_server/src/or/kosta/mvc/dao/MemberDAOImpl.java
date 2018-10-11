package or.kosta.mvc.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.dto.BikeUserLoginDTO;

@Repository // ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class MemberDAOImpl implements MemberDAO{
	// SqlSession ��ü�� �����ο��� �����Ͽ� ����
	@Autowired
	private SqlSessionTemplate ss;	// mybatis ���� ��ü
	
	// �α��� üũ
	@Override
	public boolean loginCheck(BikeUserLoginDTO dto) {
		String id = ss.selectOne("bike_user.loginCheck", dto);
		return (id == null) ? false : true;
	}
	
	// �α��� ����
	@Override
	public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto) {
		return ss.selectOne("bike_user.viewMember", dto);
	}

	// �α׾ƿ�
	@Override
	public void logout(HttpSession session) {
		System.out.println("xx ȸ�� ȣ�׾ƿ� xx�� ���� ���߿� �� ��");
	}
	
}
