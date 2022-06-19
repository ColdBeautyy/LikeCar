package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LikecarLendBean {

	private int inv_no;				
	private int car_no;				
	private int opt_no;				
	private int res_count;			
	private String release;			
	private String releease_date;
	private String return_date;		
	private int rental_fee;			
	private int distance_fee;		
}
