package sist.com.bean;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BoardBean {
	private int no;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	
}
