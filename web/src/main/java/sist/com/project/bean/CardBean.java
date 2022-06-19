package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CardBean {
	private String  card_num;
	private String  card_cp;
	private int  card_cvc;
	private int  card_pw;
	private String  card_expire_date;
	private String mem_id;
}
