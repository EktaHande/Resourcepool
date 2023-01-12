package com.resourcepool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResourceController {

	@GetMapping("/")
	public String initialPage() {
		return "index";
	}
	
	@GetMapping("dashboard")
	public String dashBoard() {
		return "redirect:/";
	}
	
}
