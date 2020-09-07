package net.test_marlo.marlo.dao;

import java.util.List;
import net.test_marlo.marlo.model.InstitutionType;

public interface InstitutionTypeDAO {

	public int save(InstitutionType institutionType);
	public int update(InstitutionType institutionType);
	public InstitutionType get(Integer id);
	public int delete(Integer id);
	public List<InstitutionType> list();
	
}
