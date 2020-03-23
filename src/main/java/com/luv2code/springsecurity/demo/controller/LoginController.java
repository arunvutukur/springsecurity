package main.java.com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

		// TODO Auto-generated constructor stub
			@GetMapping("/showMyLoginPage")
		public String showMyLoginPage() {
			
			return "plain-login";			
		}
}
