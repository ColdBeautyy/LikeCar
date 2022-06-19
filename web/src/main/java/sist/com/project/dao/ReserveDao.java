package sist.com.project.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.project.bean.LikecarPaymentBean;
import sist.com.project.bean.Reserve_CarListBean;
import sist.com.project.bean.Reserve_ReserveBean;

@Repository(value="reserveDao")
public class ReserveDao extends SqlSessionDaoSupport{
public void processMethod() {
		
		System.out.println("process success !");
	}

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
		System.out.println(this.getSqlSession());	
	}
	public List<Reserve_ReserveBean>selectLikeCarList(HashMap<String, Object>map){   
	      return this.getSqlSession().selectList("selectLikeCarList",map);
	 }
	public List<Reserve_ReserveBean>searchDataList(HashMap<String, Object>map){   
	      return this.getSqlSession().selectList("searchDataList",map);
	 }
	
	public int getCarListRowCount() {
		return this.getSqlSession().selectOne("getCarListRowCount");
	}
	public Reserve_ReserveBean infoListData(int no){
		return this.getSqlSession().selectOne("infoListData",no);
	}
	public void insertDataResult(LikecarPaymentBean bean) {
		this.getSqlSession().insert("insertDataResult",bean);
	}
	public List<LikecarPaymentBean> reserveCompleteList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("reserveCompleteList",map);
	}
	public List<LikecarPaymentBean> reserveCompleteListAll(){
		return this.getSqlSession().selectList("reserveCompleteListAll");
	}
	
	public void updateComplete(int no) {
		this.getSqlSession().update("updateComplete",no);
	}
	public void deleteComplete(int no) {
		this.getSqlSession().delete("deleteComplete",no);
	}
	public List<Reserve_ReserveBean>selectLikeCarListTest(){   
	      return this.getSqlSession().selectList("selectLikeCarListTest");
	 }
	public int priceAll(int no){
		return this.getSqlSession().selectOne("priceAll",no);
	}
	public void updatePoint(HashMap<String, Object>map) {
		this.getSqlSession().update("updatePoint",map);
	}
	public int pointSelect(String reserve_name) {
		return this.getSqlSession().selectOne("pointSelect",reserve_name);
	}
	public String getReserve_Name(int no){
		return this.getSqlSession().selectOne("getReserve_Name",no);
	}
	public void insertAccountAssets(int price) {
		this.getSqlSession().insert("insertAccountAssets",price);
	}
	public void insertAccountFan(int price) {
		this.getSqlSession().insert("insertAccountFan",price);
	}
	public void AccountMinusPaymentAssets(int MinusPrice) {
		this.getSqlSession().insert("AccountMinusPaymentAssets",MinusPrice);
	}
	public void AccountMinusFanAssets(int MinusPrice) {
		this.getSqlSession().insert("AccountMinusFanAssets",MinusPrice);
	}
	public void AccountPlusPaymentAssets(int price) {
		this.getSqlSession().insert("AccountPlusPaymentAssets",price);
	}
	public void AccountPlusPaymentRevenue(int price) {
		this.getSqlSession().insert("AccountPlusPaymentRevenue",price);
	}
	

}
