package com.springmvc.model;

import com.springmvc.validator.PasswordValid;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


import java.io.Serializable;

@Entity
@Table(name = "users")
public class User implements Serializable {

	private static final long serialVersionUID = 382759201829390123L;

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private long userId;

	@NotEmpty
	@Column(name = "user_name")
	private String userName;

	@NotEmpty
	@PasswordValid
	private String password;

	private boolean enable;

	@OneToOne
	@JoinColumn(name = "role_users")
	@NotEmpty
	private Role role;

	public User(String userName, String password,Role role) {
		this.userName = userName;
		this.password = password;
		this.role = role;
	}

	public User(){

	}


	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnable() {
		return enable;
	}

	public void setEnable(boolean enable) {
		this.enable = enable;
	}
}
