package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class VipMemberBean {
	private int vip_no;
	private String vip_type;
	private int vip_stand;
}
