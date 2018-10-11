package or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.vo.BikeCommunityVO;

@Repository // 현재 클래스를 스프링에서 관리하는 dao bean으로 등록
public class CommunityDAOImpl implements CommunityDAO{
	// SqlSession 객체를 스프핑에서 생성하여 주입
	@Autowired
	private SqlSessionTemplate ss;	// mybatis 실행 객체

	@Override
	public List<BikeCommunityVO> insertCommunity(BikeCommunityVO vo) {
		ss.insert("bike_community.insert",vo);
		return null;
	}

	@Override
	public List<BikeCommunityVO> selectCommunity(BikeCommunityVO vo) {
		ss.selectList("bike_community.select", vo);
		return null;
	}
	
}
