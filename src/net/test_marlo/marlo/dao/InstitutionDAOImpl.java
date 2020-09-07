package net.test_marlo.marlo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import net.test_marlo.marlo.model.Institution;

public class InstitutionDAOImpl implements InstitutionDAO {

	private JdbcTemplate jdbcTemplate;
	
	public InstitutionDAOImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public int save(Institution institution) {
		String sql = "INSERT INTO institutions (name, acronym, website_link, program_id, "
				+ "institution_type_id, added) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		return jdbcTemplate.update(sql, institution.getName(), institution.getAcronym(), institution.getWebsiteLink(),
				institution.getProgramId(), institution.getInstitutionTypeId(), institution.getAdded());
		
	}

	@Override
	public int update(Institution institution) {
		String sql = "UPDATE institutions SET "
				+ "name = ?, "
				+ "acronym = ?, "
				+ "website_link = ?, "
				+ "program_id = ?, "
				+ "institution_type_id = ?, "
				+ "added = ? "
				+ "WHERE id = ?";
		return jdbcTemplate.update(sql, institution.getName(), institution.getAcronym(), institution.getWebsiteLink(),
				institution.getProgramId(), institution.getInstitutionTypeId(), institution.getAdded(), institution.getId());
	}

	@Override
	public Institution get(Integer id) {
		String sql = "SELECT * FROM institutions WHERE id = " + id;
		
		ResultSetExtractor<Institution> extractor = new ResultSetExtractor<Institution>() {
			public Institution extractData(ResultSet rs) throws SQLException, DataAccessException {
				if(rs.next()) {
					String name = rs.getString("name");
					String acronym = rs.getString("acronym");
					String websiteLink = rs.getString("website_link");
					Integer programId = rs.getInt("program_id");
					Integer institutionTypeId = rs.getInt("institution_type_id");
					Date added = rs.getDate("added");
					
					return new Institution(id, name, acronym, websiteLink, programId, institutionTypeId, added);
				}
				return null; 
			};
		};
		
		return jdbcTemplate.query(sql, extractor);
	}
	
	@Override
	public int delete(Integer id) {
		String sql = "DELETE FROM institutions WHERE id = " + id;
		return jdbcTemplate.update(sql);
		
	}

	@Override
	public List<Institution> list() {

		String sql = "SELECT * FROM institutions ";
		
		RowMapper<Institution> rowMapper = new RowMapper<Institution>() {

			@Override
			public Institution mapRow(ResultSet rs, int rowNum) throws SQLException {
				Integer id = rs.getInt("id");
				String name = rs.getString("name");
				String acronym = rs.getString("acronym");
				String websiteLink = rs.getString("website_link");
				Integer programId = rs.getInt("program_id");
				Integer institutionTypeId = rs.getInt("institution_type_id");
				Date added = rs.getDate("added");
				
				return new Institution(id, name, acronym, websiteLink, programId, institutionTypeId, added);
			}
			
		};
		
		return jdbcTemplate.query(sql, rowMapper);
		
	}

}
