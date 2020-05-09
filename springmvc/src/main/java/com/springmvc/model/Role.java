package com.springmvc.model;

import javax.validation.constraints.NotNull;


import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "role")
//Chuyển đổi kiểu dữ liệu byte <=> object
public class Role implements Serializable {

	private static final long serialVersionUID = 18574623948571248L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private long roleId;

	@NotNull
	private String name;

	private boolean enable;

	@OneToOne
	@JoinColumn(name = "user_role")
	private User users;

	//ánh xạ tới role và khi select object role sẽ có role
	@OneToMany(fetch = FetchType.EAGER)
	@Column(name = "role_detail")
	protected List<RoleDetail> roleDetails;

	public User getUsers() {
		return users;
	}

	public void setUsers(User users) {
		this.users = users;
	}

	public long getRoleId() {
		return roleId;
	}

	public void setRoleId(long roleId) {
		this.roleId = roleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<RoleDetail> getRoleDetails() {
		return roleDetails;
	}

	public void setRoleDetails(List<RoleDetail> roleDetails) {
		this.roleDetails = roleDetails;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
