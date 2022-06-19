package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminErpBean {
	private int emp_no;
	private String emp_name;
	private String emp_id;
	private String emp_pw;
	private String deptno;
	private String position;
	private int mgr;
	private String hiredate;
	private String emp_tel;
	private String emp_email;
	private String emp_comtel;
	
}
