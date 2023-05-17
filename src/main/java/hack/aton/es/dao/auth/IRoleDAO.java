/**
 * 
 */
package hack.aton.es.dao.auth;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import hack.aton.es.dto.auth.ERole;
import hack.aton.es.dto.auth.Role;

/**
 * @author elena-01
 *
 */
public interface IRoleDAO extends JpaRepository<Role, Integer>{

	Optional<Role> findByName(ERole name);
}
