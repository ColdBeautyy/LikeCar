package sist.com.project.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.project.bean.MyPageBean;
import sist.com.project.bean.ZipcodeBean;

@Repository(value="memdao")
public class MemberDao extends SqlSessionDaoSupport{

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public boolean memberCheck(String id, String pw) {
		String dbpw=this.getSqlSession().selectOne("memberCheck", id);
		if(dbpw==null) {
			return false;
		}
		return dbpw.equals(pw)&&dbpw!=null;
	}
	public String selectMemberName(String id) {
		System.out.println((String)this.getSqlSession().selectOne("selectMemberName", id));
		return this.getSqlSession().selectOne("selectMemberName", id);
	}

	public boolean adminCheck(String id, String pw) {
		String dbpw=this.getSqlSession().selectOne("adminCheck", id);
		if(dbpw==null) {
			return false;
		}
		System.out.println(dbpw);
		System.out.println(dbpw.equals(pw)&&dbpw!=null);
		return dbpw.equals(pw)&&dbpw!=null;
	}

	public boolean idOverlapCheck(String id) {
		String idPass=this.getSqlSession().selectOne("idOverlapCheck", id);
		return !(idPass!=null && idPass.equals(id));
	}
	
	public void insertMemberSignUp(HashMap<String, Object>map) {
		this.getSqlSession().insert("insertLicenceInfo",map);//Î©¥ÌóàÏ¶ùÌÖå?ù¥Î∏?
		this.getSqlSession().insert("insertMemberSignUp", map);//?öå?õê?Öå?ù¥Î∏?
		this.getSqlSession().insert("insertCardInfo", map);//Ïπ¥Îìú?†ïÎ≥¥ÌÖå?ù¥Î∏?
		this.getSqlSession().insert("insertSignUpCoupon",map);//Í∞??ûÖ Ïø†Ìè∞ Î∞úÌñâ
	}
	

	public MyPageBean mypageInfo(String id){
		System.out.println("dao="+this.getSqlSession().selectList("mypageInfo", id));
		return this.getSqlSession().selectOne("mypageInfo", id);
	}

	public void memAccountUpdate(HashMap<String, Object>map) {
		this.getSqlSession().update("memLicenceUpdate", map);
		this.getSqlSession().update("memAccountUpdate", map);
	}

	public void mempasswordUpdate(HashMap<String, Object>map) {		
		this.getSqlSession().update("mempasswordUpdate", map);
	}
	
}
