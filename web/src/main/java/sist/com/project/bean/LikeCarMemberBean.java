package sist.com.project.bean;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Component
@Data
@NoArgsConstructor
@AllArgsConstructor

public class LikeCarMemberBean {

	private int no;
	private String id;
	private String password;
	private String name;
	private String addr;
}
