package com.resourcepool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResourceController {

	@GetMapping("/")
	public String initialPage() {
		return "login";
	}
	
	
	@GetMapping("logged")
	public String alreadyHaveAnAccount() {
		return "redirect:/";
	}
	
	@GetMapping("backToLogin")
	public String backToLogin() {
		return "redirect:/";
	}
	@GetMapping("dashboard")
	public String dashBoard() {
		return "index";
	}
	
	@PostMapping("login")
	public String loginForm() {
		return "redirect:/dashboard";
	}
	
	@PostMapping(value={"forgotPasswordForm","resetPasswordForm"})
	public String forgotPasswordForm() {
		return "redirect:/backToLogin";
	}
	@GetMapping("forgotPassword")
	public String forgotPassword() {
		return "forgotPassword";
	}
	
	@GetMapping("resetPassword")
	public String resetPassword() {
		return "resetPassword";
	}
	@GetMapping("/manageEmployee")
	public String manageEmployee() {
		return "ManageEmployee" ;

	}
	
	@RequestMapping("manageCompanyDetails")
	public String manageCompanyDetails() {
		return "manageCompanyDetails";
	}
	
	@RequestMapping("/registration")
	public String registration() {
		return "Registration";
	}
	
}
