package app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "register")
@SessionAttributes({ "userSession" })
public class RegisterUserController {

	@GetMapping
	public ModelAndView register() {
		return new ModelAndView("registerUser");
	}
}