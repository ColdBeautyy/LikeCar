package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LicenceBean {
	private String lic_no;
	private String enroll_date;
	private String expire_date;
	private String type;
}
