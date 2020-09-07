package net.test_marlo.marlo.dao;

import java.util.List;
import net.test_marlo.marlo.model.Institution;

public interface InstitutionDAO {

	public int save(Institution institution);
	public int update(Institution institution);
	public Institution get(Integer id);
	public int delete(Integer id);
	public List<Institution> list();
	
}
