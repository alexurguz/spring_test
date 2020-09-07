package net.test_marlo.marlo.dao;

import java.util.List;
import net.test_marlo.marlo.model.LocElementType;

public interface LocElementTypeDAO {

	public int save(LocElementType locElementType);
	public int update(LocElementType locElementType);
	public LocElementType get(Integer id);
	public int delete(Integer id);
	public List<LocElementType> list();
	
}
