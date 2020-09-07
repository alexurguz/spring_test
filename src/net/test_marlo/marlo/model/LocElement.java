package net.test_marlo.marlo.model;

public class LocElement {
	private Integer id;
	private String name;
	private Integer isActive;
	
	public LocElement(Integer id, String name, Integer isActive) {
		super();
		this.id = id;
		this.name = name;
		this.isActive = isActive;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getIsActive() {
		return isActive;
	}

	public void setIsActive(Integer isActive) {
		this.isActive = isActive;
	}
	
}
