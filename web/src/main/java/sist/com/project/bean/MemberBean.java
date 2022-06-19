package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberBean {
	private int mem_no;
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_tel;
	private String mem_birth;
	private String reception;
	private int point;
	private String company;
	private String post;
	private String address;
	private int vip_no; 
	private String lic_no;
}
