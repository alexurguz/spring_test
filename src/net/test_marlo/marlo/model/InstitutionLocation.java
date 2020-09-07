package net.test_marlo.marlo.model;

public class InstitutionLocation {

	private Integer id;
	private Integer institutionId;
	private Integer locElementId;
	private Integer isHeadquater;
	private String city;
	
	public InstitutionLocation(Integer id, Integer institutionId, Integer locElementId, Integer isHeadquater,
			String city) {
		super();
		this.id = id;
		this.institutionId = institutionId;
		this.locElementId = locElementId;
		this.isHeadquater = isHeadquater;
		this.city = city;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(Integer institutionId) {
		this.institutionId = institutionId;
	}

	public Integer getLocElementId() {
		return locElementId;
	}

	public void setLocElementId(Integer locElementId) {
		this.locElementId = locElementId;
	}

	public Integer getIsHeadquater() {
		return isHeadquater;
	}

	public void setIsHeadquater(Integer isHeadquater) {
		this.isHeadquater = isHeadquater;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
}
 