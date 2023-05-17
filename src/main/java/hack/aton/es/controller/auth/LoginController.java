/**
 * 
 */
package hack.aton.es.controller.auth;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author elena-01
 *
 */


@RestController
@RequestMapping("/api")
public class LoginController {

	@PreAuthorize("hasRole('USER')")
	@GetMapping("/welcome")
	public List<String> firstLoginUser(){
		List<String> firstLogin = new ArrayList<>();
		firstLogin.add("You are Log in Hackaton App");
		return firstLogin;
	}
}
