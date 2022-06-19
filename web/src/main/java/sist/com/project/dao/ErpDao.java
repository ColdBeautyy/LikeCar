package sist.com.project.dao;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sist.com.project.bean.AdminErpBean;
import sist.com.project.bean.FsBean;
import sist.com.project.bean.InscomBean;
import sist.com.project.bean.InventoryBean;
import sist.com.project.bean.MemberErpBean;
import sist.com.project.bean.OperationBean;
import sist.com.project.bean.ReservationErpBean;
import sist.com.project.bean.RevcomBean;

@Repository(value="erpDao")
public class ErpDao extends SqlSessionDaoSupport{
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
		System.out.println(this.getSqlSession());
	}
	
	public List<InventoryBean>getInventoryAllList(){
		return this.getSqlSession().selectList("getInventoryAllList");
	}
	
	public List<InventoryBean>getInventoryList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("getInventoryList", map);
	}
	
	public void updateInventoryList(HashMap<String, Object>map) {
		this.getSqlSession().update("updateInventoryList", map);
	}
	
	public void deleteInventoryList(int no) {
		this.getSqlSession().delete("deleteInventoryList", no);
	}
	
	public HashMap<String, List<OperationBean>>getOperationList(HashMap<String, Object>map){
		HashMap<String, List<OperationBean>>resultMap=new HashMap<String, List<OperationBean>>();
		resultMap.put((String)map.get("keyword"), getSqlSession().selectList("getOperationList", map));

		String[]modelList=(String[])map.get("compare_models");
		for (int i = 0; i < modelList.length; i++) {
			if(!map.get("keyword").equals(modelList[i])) {
				map.remove("keyword");
				map.put("keyword", modelList[i]);
				resultMap.put(modelList[i], getSqlSession().selectList("getOperationList", map));
			}
		}
		return resultMap;
	}
	
	public HashMap<String, List<ReservationErpBean>>getReservationAgeList(HashMap<String, Object>map){
		HashMap<String, List<ReservationErpBean>>resultMap=new HashMap<String, List<ReservationErpBean>>();
		resultMap.put((String)map.get("select_age"), getSqlSession().selectList("getReservationAgeCount", map));
		
		String[]ageList=(String[])map.get("compare_ages");
		for (int i = 0; i < ageList.length; i++) {
			if(!map.get("select_age").equals(ageList[i])) {
				map.remove("select_age");
				map.put("select_age", ageList[i]);
				resultMap.put(ageList[i], getSqlSession().selectList("getReservationAgeCount", map));
			}
		}
		System.out.println(resultMap);
		return resultMap;
	}
	
	public List<FsBean> getFsReportData(HashMap<String, Object>map){
		return this.getSqlSession().selectList("getFsReportData", map);
	}
	
	public List<FsBean> getSummaryData(String date){
		return this.getSqlSession().selectList("getSummaryData", date);
	}
	
	public List<MemberErpBean> getMemberDataList(){
		return this.getSqlSession().selectList("getMemberDataList");
	}
	
	public List<MemberErpBean> searchMemberDataList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("searchMemberDataList", map);
	}
	
	public void updateMemberList(HashMap<String, Object>map) {
		this.getSqlSession().update("updateMemberList", map);
	}
	
	public void deleteMemberList(int no) {
		this.getSqlSession().delete("deleteMemberList", no);
	}
	
	public List<AdminErpBean> getAdminDataList(){
		return this.getSqlSession().selectList("getAdminDataList");
	}
	
	public List<AdminErpBean> searchAdminDataList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("searchAdminDataList", map);
	}
	
	public void updateAdminList(HashMap<String, Object>map) {
		this.getSqlSession().update("updateAdminList", map);
	}
	
	public void deleteAdminList(int no) {
		this.getSqlSession().delete("deleteAdminList", no);
	}
	
	public List<RevcomBean> getRevcomDataList(){
		return this.getSqlSession().selectList("getRevcomDataList");
	}
	
	public List<RevcomBean> searchRevcomDataList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("searchRevcomDataList", map);
	}
	
	public void updateRevcomList(HashMap<String, Object>map) {
		this.getSqlSession().update("updateRevcomList", map);
	}
	
	public void deleteRevcomList(int no) {
		this.getSqlSession().delete("deleteRevcomList", no);
	}
	
	public List<InscomBean> getInscomDataList(){
		return this.getSqlSession().selectList("getInscomDataList");
	}
	
	public List<InscomBean> searchInscomDataList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("searchInscomDataList", map);
	}
	
	public void updateInscomList(HashMap<String, Object>map) {
		this.getSqlSession().update("updateInscomList", map);
	}
	
	public void deleteInscomList(int no) {
		this.getSqlSession().delete("deleteInscomList", no);
	}

	public int selectReserveCount() {
		return this.getSqlSession().selectOne("selectReserveCount");
	}
	
	
}
