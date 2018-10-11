package or.kosta.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import or.kosta.vo.CBoardVO;


@Repository
public class CBoardDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	public void addFile(CBoardVO vo) {
		ss.insert("file.add", vo);
		
	}
}
