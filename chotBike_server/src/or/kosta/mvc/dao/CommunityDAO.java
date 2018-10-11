package or.kosta.mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import or.kosta.vo.BikeCommunityVO;

@Repository
public interface CommunityDAO {
	// 01. �Խñ� ���
	public List<BikeCommunityVO> insertCommunity(BikeCommunityVO vo);
	// 02. �Խñ� ����
	
	// 03. �Խñ� ����
	
	// 04. �Խñ� ��ȸ
	public List<BikeCommunityVO> selectCommunity(BikeCommunityVO vo);
}
