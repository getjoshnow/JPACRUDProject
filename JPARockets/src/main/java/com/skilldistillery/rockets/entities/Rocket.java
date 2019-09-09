package com.skilldistillery.rockets.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="rockets")
public class Rocket {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="idrockets")
	private Integer id;
	
	
	private String name;
	private Integer height;
	private Integer thrust;
	private Integer engines;
	private String company;


	
	
	
	
	
	
	
	
	
	public Integer getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public Integer getThrust() {
		return thrust;
	}
	public void setThrust(Integer thrust) {
		this.thrust = thrust;
	}
	public Integer getEngines() {
		return engines;
	}
	public void setEngines(Integer engines) {
		this.engines = engines;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((company == null) ? 0 : company.hashCode());
		result = prime * result + engines;
		result = prime * result + height;
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + thrust;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Rocket other = (Rocket) obj;
		if (company == null) {
			if (other.company != null)
				return false;
		} else if (!company.equals(other.company))
			return false;
		if (engines != other.engines)
			return false;
		if (height != other.height)
			return false;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (thrust != other.thrust)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Rocket [id=" + id + ", name=" + name + ", height=" + height + ", thrust=" + thrust + ", engines="
				+ engines + ", company=" + company + "]";
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	
}
