package main.java.com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

		// TODO Auto-generated constructor stub
		@GetMapping("/showMyLoginPage")
		public String showMyLoginPage() {
			
			return "fancy-login";			
		}
			
		//add a request mapping for /access denied	
		@GetMapping("/accessdenied")
		public String showDeniedPage() {
			
			return "accessdenied";			
		}
			
}
