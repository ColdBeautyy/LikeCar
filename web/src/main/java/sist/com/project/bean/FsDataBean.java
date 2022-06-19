package sist.com.project.bean;

import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FsDataBean {
	private String acc_type;
	private String acc_name;
	private int current_value;
	private int last_value;
	private int difference;
	
}
