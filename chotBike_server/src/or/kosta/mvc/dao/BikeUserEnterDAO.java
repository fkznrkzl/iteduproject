package or.kosta.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.vo.BikeUserVO;

@Repository
public class BikeUserEnterDAO {
	@Autowired
	private SqlSession ss;
	
	public void addUser(BikeUserVO vo) {
		ss.insert("bike_user.add", vo);
	}
	
}
