package com.springmvc.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "roleDetail")
public class RoleDetail implements Serializable {

	private static final long serialVersionUID = 27484920199284758L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long roleDetailId;

	@NotNull
	private String name;

	@Column(name = "action")
	private String action;
	private boolean enable;

	public long getRoleDetailId() {
		return roleDetailId;
	}

	public void setRoleDetailId(long roleDetailId) {
		this.roleDetailId = roleDetailId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
