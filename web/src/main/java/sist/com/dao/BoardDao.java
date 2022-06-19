package sist.com.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.bean.BoardBean;

@Repository(value="boarddao")
public class BoardDao extends SqlSessionDaoSupport{
	
	/*@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}*/
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
		System.out.println(this.getSqlSession());
	}
	
	public void write(BoardBean boardBean) {
		this.getSqlSession().insert("write", boardBean); //sqlsession을 통해서 가져옴
		
	}
	
}
