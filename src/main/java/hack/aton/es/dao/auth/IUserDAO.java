/**
 * 
 */
package hack.aton.es.dao.auth;

import org.springframework.data.jpa.repository.JpaRepository;

import hack.aton.es.dto.auth.User;



/**
 * @author elena-01
 *
 */
public interface IUserDAO extends JpaRepository<User, Integer> {
	User findByUsername(String username);

	Boolean existsByUsername(String username);

	Boolean existsByEmail(String email);
}
