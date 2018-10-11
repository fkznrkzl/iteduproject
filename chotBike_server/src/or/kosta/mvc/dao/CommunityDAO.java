package or.kosta.mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import or.kosta.vo.BikeCommunityVO;

@Repository
public interface CommunityDAO {
	// 01. 게시글 등록
	public List<BikeCommunityVO> insertCommunity(BikeCommunityVO vo);
	// 02. 게시글 수정
	
	// 03. 게시글 삭제
	
	// 04. 게시글 조회
	public List<BikeCommunityVO> selectCommunity(BikeCommunityVO vo);
}
