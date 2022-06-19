package sist.com.project.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FsBean {
	private int acc_no;
	private String acc_type;
	private String acc_name;
	private int acc_value;
	private String acc_date;
	private int deprec_life;
	private int rate;
}
