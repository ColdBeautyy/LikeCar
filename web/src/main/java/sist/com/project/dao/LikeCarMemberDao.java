package sist.com.project.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository(value="likeCarMemberDao")
public class LikeCarMemberDao extends SqlSessionDaoSupport{
public void processMethod() {
		
		System.out.println("process success !");
	}

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
		System.out.println(this.getSqlSession());	
	}
	
	public boolean idLikeMemberCheck(String id,String password) {
		//System.out.println(id+" "+password);
		String dbpass=this.getSqlSession().selectOne("idLikeMemberCheck",id);
		return dbpass!=null&&dbpass.equals(password);
	}
}
