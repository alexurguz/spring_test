package net.test_marlo.marlo.dao;

import java.util.List;
import net.test_marlo.marlo.model.LocElement;

public interface LocElementDAO {

	public int save(LocElement locElement);
	public int update(LocElement locElement);
	public LocElement get(Integer id);
	public int delete(Integer id);
	public List<LocElement> list();
	
}
