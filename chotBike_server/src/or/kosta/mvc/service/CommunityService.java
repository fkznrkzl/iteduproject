package or.kosta.mvc.service;

import java.util.List;

import or.kosta.vo.BikeCommunityVO;

public interface CommunityService {
	// 01. 게시글 등록
	public List<BikeCommunityVO> insertCommunity(BikeCommunityVO vo);
	// 02. 게시글 수정
	
	// 03. 게시글 삭제
}
