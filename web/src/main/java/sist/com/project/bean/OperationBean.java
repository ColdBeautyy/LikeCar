package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OperationBean {
	private String standard_date;
	private String car_name;
	private int count;
	private int allcount;
	private double rate;
}
