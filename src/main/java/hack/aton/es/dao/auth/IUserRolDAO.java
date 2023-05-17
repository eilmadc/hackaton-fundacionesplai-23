/**
 * 
 */
package hack.aton.es.dao.auth;

import org.springframework.data.jpa.repository.JpaRepository;


import hack.aton.es.dto.auth.UserRol;

/**
 * @author elena-01
 *
 */
public interface IUserRolDAO extends JpaRepository<UserRol, Integer>{

}
