package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Reserve_CarListBean {
	
	private int car_no;			
	private int opc_no;				
	private String car_name;		
	private String car_type;		
	private String car_size;	
	private String car_energy;	
	private String purchase_from;	
	private int purchase_cost;		
	private String purchase_date;	
	private int deprec_life;		
	private int residual_value;		
	private String deprec_method;	
	private int fairvalue_1year;	
	private int fairvalue_2year;	
	private int fairvalue_3year;	
	private int fairvalue_4year;	
	private int boardable_count;	
	private String car_filename1;
	private String car_filename2;
	private String car_filename3;
	private String car_filename4;
	private String car_filename5;
}
