package or.kosta.mvc.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import or.kosta.vo.NoticeVO;

@Repository
public interface NoticeDAO {
	// 01. 게시글 작성
	public List<NoticeVO> insertNotice(NoticeVO vo);
	// 02. 게시글 수정
	public List<NoticeVO> updateNotice(NoticeVO vo);
	// 03. 게시글 확인
	public List<NoticeVO> selectNotice(NoticeVO vo);
	// 04. 게시글 삭제
	public List<NoticeVO> deleteNotice(NoticeVO vo);
	// 05. 게시판 페이징 처리
	public int countNotice(int i);
	// 06. 게시판 게시글 갯수 확인
	public int selectNoticeCnt(NoticeVO vo);
	// 07. 메인 미리 보기
	public List<NoticeVO> selectNew(NoticeVO vo);
	// 08. 게시글 상세보기
	public List<NoticeVO> viewNotice(NoticeVO vo);
}
