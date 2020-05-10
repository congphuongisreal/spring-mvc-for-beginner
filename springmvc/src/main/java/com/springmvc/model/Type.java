package com.springmvc.model;

import javax.validation.constraints.NotNull;


import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "type")
public class Type implements Serializable {

	private static final long serialVersionUID = 85927105829930192L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private long typeId;

	@NotNull(message = "Please input name")
	private String name;

	public long getTypeId() {
		return typeId;
	}

	public void setTypeId(long typeId) {
		this.typeId = typeId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
