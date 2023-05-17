/**
 * 
 */
package hack.aton.es.dto.auth;

import java.util.List;

import com.ex02.c4.dto.auth.UserRol;
import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.*;

/**
 * @author elena-01
 *
 */

@Entity
@Table(name = "roles")
public class Role {

	// ---------- Attributes ----------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private ERole name;

	public Role() {

	}

	public Role(ERole name) {
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ERole getName() {
		return name;
	}

	public void setName(ERole name) {
		this.name = name;
	}
}
