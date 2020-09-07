package net.test_marlo.marlo.model;

public class LocElementType {
	private Integer id;
	private String name;
	private String isoAlpha2;
	private Integer parentId;
	private Integer elementTypeId;
	private Integer isActive;
	
	public LocElementType(Integer id, String name, String isoAlpha2, Integer parentId, Integer elementTypeId,
			Integer isActive) {
		super();
		this.id = id;
		this.name = name;
		this.isoAlpha2 = isoAlpha2;
		this.parentId = parentId;
		this.elementTypeId = elementTypeId;
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

	public String getIsoAlpha2() {
		return isoAlpha2;
	}

	public void setIsoAlpha2(String isoAlpha2) {
		this.isoAlpha2 = isoAlpha2;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getElementTypeId() {
		return elementTypeId;
	}

	public void setElementTypeId(Integer elementTypeId) {
		this.elementTypeId = elementTypeId;
	}

	public Integer getIsActive() {
		return isActive;
	}

	public void setIsActive(Integer isActive) {
		this.isActive = isActive;
	}
	
}
