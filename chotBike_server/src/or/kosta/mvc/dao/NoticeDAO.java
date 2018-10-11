package or.kosta.mvc.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import or.kosta.vo.NoticeVO;

@Repository
public interface NoticeDAO {
	// 01. �Խñ� �ۼ�
	public List<NoticeVO> insertNotice(NoticeVO vo);
	// 02. �Խñ� ����
	public List<NoticeVO> updateNotice(NoticeVO vo);
	// 03. �Խñ� Ȯ��
	public List<NoticeVO> selectNotice(NoticeVO vo);
	// 04. �Խñ� ����
	public List<NoticeVO> deleteNotice(NoticeVO vo);
	// 05. �Խ��� ����¡ ó��
	public int countNotice(int i);
	// 06. �Խ��� �Խñ� ���� Ȯ��
	public int selectNoticeCnt(NoticeVO vo);
	// 07. ���� �̸� ����
	public List<NoticeVO> selectNew(NoticeVO vo);
	// 08. �Խñ� �󼼺���
	public List<NoticeVO> viewNotice(NoticeVO vo);
}
