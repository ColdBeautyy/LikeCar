package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InventoryBean {
	private int inv_no;
	private int car_no;
	private int opt_no;
	private int res_count;
	private String release;
	private String release_date;
	private String return_date;
	private String rental_fee;
	private String distance_fee;
	
	private String car_name;
	private String car_type;
	private String car_size;
	private String car_energy;
	private String purchase_from;
	private int purchase_cost;
	private String purchase_date;
	private int boardable_count;
}
