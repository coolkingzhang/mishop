package com.mishop.item.center.web.vo;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class UserVo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@NotNull(message = "{user.id.null}")
	private Long id;

	@NotEmpty(message = "{user.name.null}")
	@Length(min = 5, max = 20, message = "{user.name.length.illegal}")
	@Pattern(regexp = "[a-zA-Z]{5,20}", message = "{user.name.illegal}")
	private String name;

	private Map<String, Object> info;

	private List<Integer> userlist;

	@NotNull(message = "{user.password.null}")
	private String password;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String, Object> getInfo() {
		return info;
	}

	public void setInfo(Map<String, Object> info) {
		this.info = info;
	}

	public List<Integer> getList() {
		return userlist;
	}

	public void setList(List<Integer> userlist) {
		this.userlist = userlist;
	}

	public UserVo() {

	}
}
