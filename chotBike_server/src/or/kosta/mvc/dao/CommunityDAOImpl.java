package or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.vo.BikeCommunityVO;

@Repository // ���� Ŭ������ ���������� �����ϴ� dao bean���� ���
public class CommunityDAOImpl implements CommunityDAO{
	// SqlSession ��ü�� �����ο��� �����Ͽ� ����
	@Autowired
	private SqlSessionTemplate ss;	// mybatis ���� ��ü

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
