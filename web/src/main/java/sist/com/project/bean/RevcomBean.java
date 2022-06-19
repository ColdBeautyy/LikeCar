package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RevcomBean {
	private int revcom_no;
	private String revcom_name;
	private String revcom_charge;
	private int emp_no;
	private String emp_name;
	private String revcom_start;
	private String revcom_end;

}
