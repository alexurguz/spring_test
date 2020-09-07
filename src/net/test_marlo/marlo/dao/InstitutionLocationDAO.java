package net.test_marlo.marlo.dao;

import java.util.List;
import net.test_marlo.marlo.model.InstitutionLocation;

public interface InstitutionLocationDAO {

	public int save(InstitutionLocation institutionLocation);
	public int update(InstitutionLocation institutionLocation);
	public InstitutionLocation get(Integer id);
	public int delete(Integer id);
	public List<InstitutionLocation> list();
	
}
