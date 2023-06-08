package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MemberVO {
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String tel;
	private String info;
}
