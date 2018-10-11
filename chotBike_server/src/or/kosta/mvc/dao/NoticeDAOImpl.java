package or.kosta.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	
	// sqlsession 按眉 林涝
	@Autowired
	private SqlSessionTemplate ss;	// mybatis 按眉 角青侩

	@Override
	public List<NoticeVO> insertNotice(NoticeVO vo) {
		ss.insert("notice.insert", vo);
		return null;
	}

	@Override
	public List<NoticeVO> updateNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NoticeVO> selectNotice(NoticeVO vo) {
		List<NoticeVO> vo2 = ss.selectList("notice.select", vo);
		return vo2;
	}

	@Override
	public int selectNoticeCnt(NoticeVO vo) {
		int vo2 = (int)ss.selectOne("notice.selectCnt", vo);
		return vo2;
	}

	@Override
	public List<NoticeVO> deleteNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countNotice(int i) {
		return i;
	}

	@Override
	public List<NoticeVO> selectNew(NoticeVO vo) {
		List<NoticeVO> vo2 = ss.selectList("notice.selectNew", vo);
		return vo2;
	}

	@Override
	public List<NoticeVO> viewNotice(NoticeVO vo) {
		List<NoticeVO> vo2 = ss.selectList("notice.selectView", vo);
		return vo2;
	}

}
