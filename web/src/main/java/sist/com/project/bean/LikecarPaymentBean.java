package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LikecarPaymentBean {
	private String car_start_date;
	private String car_end_date;
	private String start_date;
	private String end_date;
	private int res_no;
	private int car_no;
	private String car_name;
	private String car_type;
	private String car_energy;
	private String car_size;
	private int boardable_count;
	private int rental_price;
	private int premium_price;
	private int coupon_discount;
	private int total_price;
	private String option_value;
	private String premium_value;
	private String state;
	private String reserve_name;
}
