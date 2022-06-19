package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Reserve_ReserveBean {
		private int res_no; 
		private int mem_no;	
		private int ins_no;	
		private int inscom_no;	
		private int inv_no;		
		private int pay_no;		
		private int vip_np;		
		private int car_no;		
		private int opt_no;		
		private int emp_no;	
		private String res_type;
		private String start_date;
		private String end_date;
		private String deposit;	
		private Reserve_CarListBean reserve_carListBean; 
}