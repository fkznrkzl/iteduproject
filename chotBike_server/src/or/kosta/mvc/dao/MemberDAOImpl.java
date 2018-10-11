package or.kosta.mvc.dao;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.dto.BikeUserLoginDTO;

@Repository // 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class MemberDAOImpl implements MemberDAO{
	// SqlSession 객체를 스프핑에서 생성하여 주입
	@Autowired
	private SqlSessionTemplate ss;	// mybatis 실행 객체
	
	// 로그인 체크
	@Override
	public boolean loginCheck(BikeUserLoginDTO dto) {
		String id = ss.selectOne("bike_user.loginCheck", dto);
		return (id == null) ? false : true;
	}
	
	// 로그인 정보
	@Override
	public BikeUserLoginDTO viewMember(BikeUserLoginDTO dto) {
		return ss.selectOne("bike_user.viewMember", dto);
	}

	// 로그아웃
	@Override
	public void logout(HttpSession session) {
		System.out.println("xx 회원 호그아웃 xx값 설정 나중에 할 것");
	}
	
}
