package com.resourcepool.controller;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

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

	@PostMapping(value = { "forgotPasswordForm", "resetPasswordForm" })
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

	@GetMapping("manageEmployee")
	public String manageEmployee() {
		return "ManageEmployee";

	}
	
	@GetMapping("employeeHome")
	public String employeeHome() {
		return "employeeDetailHome";
	}
	
	@GetMapping("manageCompanyDetails")
	public String manageCompanyDetails() {
		return "manageCompanyDetails";
	}

	@GetMapping("/registration")
	public String registration() {
		return "Registration";
	}
	
	@GetMapping("/postJob")
	public String postJob() {
		return "postJob" ;
	}

	@PostMapping("/ObjectData")
	@ResponseBody
	public String getData(HttpServletRequest request) {
		System.out.println(request.getParameter("obj"));
		JSONObject obj = new JSONObject(request.getParameter("obj"));
		return obj.toString();
	}

	@PostMapping("/submitPersonalDetails")
	@ResponseBody
	public String submitPersonalDetails(@RequestParam("personalDetails") String personalDetails) {
		System.out.println(personalDetails);
		return "Done";
	}
}
