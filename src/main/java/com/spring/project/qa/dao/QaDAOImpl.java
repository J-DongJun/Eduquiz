package com.spring.project.qa.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.project.qa.vo.ListNum;
import com.spring.project.qa.vo.QaVO;




@Repository("qaDAO")
public class QaDAOImpl implements QaDAO {
	
	@Autowired
	private SqlSession sqlSession;

	

	
	
	  @Override public List selectAllQaesList(ListNum listNum) throws DataAccessException { 
		  return sqlSession.selectList("mapper.qa.selectAllQaesList",listNum);
	  
	  }
	 
	
	
	

	@Override
	public int listCount() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.qa.listCount");
	}
	
	
	

	@Override
	public int insertNewQa(Map qaMap) throws DataAccessException {
		int qaNUM = selectNewQaNUM();
		qaMap.put("qaNUM", qaNUM);
		sqlSession.insert("mapper.qa.insertNewQa",qaMap);
		return qaNUM;
	}

	private int selectNewQaNUM() throws DataAccessException {
		return sqlSession.selectOne("mapper.qa.selectNewQaNUM");
	}
	
	@Override
	public QaVO viewQa(int qaNUM) throws DataAccessException {
		// TODO Auto-generated method stub
		System.out.println(qaNUM);
		QaVO q = sqlSession.selectOne("mapper.qa.viewQa", qaNUM);
		return q;
	}

	@Override
	public void updateQa(Map qaMap) throws DataAccessException {
		sqlSession.update("mapper.qa.updateQa", qaMap);
	}

	@Override
	public void deleteQa(int qaNUM) throws DataAccessException {
		sqlSession.delete("mapper.qa.deleteQa", qaNUM);
	}


	@Override
	public int addReply(Map qaMap) throws DataAccessException {
		// TODO Auto-generated method stub
		
		int qaNUM2 = (Integer)qaMap.get("qaNUM");
		int qaNUM = selectNewQaNUM();
		qaMap.put("qaNUM", qaNUM);
		qaMap.put("qaParentNUM", qaNUM2);
		//System.out.println(qaMap.values());
		//System.out.println(qaMap2.values());
		sqlSession.insert("mapper.qa.addReply",qaMap);
		return qaNUM;
	}




	


	

}
