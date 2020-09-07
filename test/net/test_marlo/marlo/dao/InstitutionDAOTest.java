package net.test_marlo.marlo.dao;

import static org.junit.jupiter.api.Assertions.*;
import java.sql.Timestamp;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import net.test_marlo.marlo.model.Institution;

class InstitutionDAOTest {

	private DriverManagerDataSource dataSource;
	private InstitutionDAO dao;
	
	@BeforeEach
	void setupforeEach() {
		dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		dataSource.setUrl("jdbc:mysql://localhost:8889/tech_test");
		dataSource.setUsername("root");
		dataSource.setPassword("root");

		dao = new InstitutionDAOImpl(dataSource);
    }
	
	@Test
	void testSave() {
		
		Timestamp now = new Timestamp(System.currentTimeMillis());

		Institution institution = new Institution("name", "acronym", "website_link", 1, 3, now );
		
		int result = dao.save(institution);
		
		assertTrue(result > 0);
		
	}

	@Test
	void testUpdate() {
		Timestamp now = new Timestamp(System.currentTimeMillis());

		Institution institution = new Institution(32, "nameUpdate", "acronymUpdate", "website_linkUpdate", 1, 3, now );
		
		int result = dao.update(institution);
		
		assertTrue(result > 0);
	}

	@Test
	void testGet() {
		Integer id = 32;
		
		Institution institution = dao.get(id);
		
		if(institution != null) {
			System.out.print(institution);
		}
		
		assertNotNull(institution);
		
	}

	@Test
	void testDelete() {

		Integer id = 32;

		int result = dao.delete(id);
		
		assertTrue(result > 0);
	}
	
	@Test
	void testList() {
		List<Institution> listInstitutions = dao.list();
		
		for (Institution institution : listInstitutions) {
			System.out.println(institution);
		}
		
		assertTrue(!listInstitutions.isEmpty());
	}

}
