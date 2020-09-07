package net.test_marlo.marlo.model;

import java.util.Date;

public class Institution {
	private Integer id;
	private String name;
	private String acronym;
	private String websiteLink;
	private Integer programId;
	private Integer institutionTypeId;
	private Date added;
	
	public Institution(Integer id, String name, String acronym, String websiteLink, Integer programId,
			Integer institutionTypeId, Date added) {
		this(name, acronym, websiteLink, programId, institutionTypeId, added);
		this.id = id;
	}
	
	public Institution(String name, String acronym, String websiteLink, Integer programId,
			Integer institutionTypeId, Date added) {
		this.name = name;
		this.acronym = acronym;
		this.websiteLink = websiteLink;
		this.programId = programId;
		this.institutionTypeId = institutionTypeId;
		this.added = added;
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

	public String getAcronym() {
		return acronym;
	}

	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}

	public String getWebsiteLink() {
		return websiteLink;
	}

	public void setWebsite_link(String websiteLink) {
		this.websiteLink = websiteLink;
	}

	public Integer getProgramId() {
		return programId;
	}

	public void setProgramId(Integer programId) {
		this.programId = programId;
	}

	public Integer getInstitutionTypeId() {
		return institutionTypeId;
	}

	public void setInstitutionTypeId(Integer institutionTypeId) {
		this.institutionTypeId = institutionTypeId;
	}

	public Date getAdded() {
		return added;
	}

	public void setAdded(Date added) {
		this.added = added;
	}

	@Override
	public String toString() {
		return "Institution [id=" + id + ", name=" + name + ", acronym=" + acronym + ", websiteLink=" + websiteLink
				+ ", programId=" + programId + ", institutionTypeId=" + institutionTypeId + ", added=" + added + "]";
	}
		
}
