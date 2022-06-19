package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InscomBean {
	private int inscom_no;
	private String inscom_name;
	private String inscom_charge;
	private int emp_no;
	private String emp_name;
	private String inscom_start;
	private String inscom_end;

}
