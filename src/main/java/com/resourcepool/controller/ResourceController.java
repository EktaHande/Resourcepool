package com.resourcepool.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResourceController {

	
	@RequestMapping(value={"/","dashboard"})
	public String initialPage() {
		return "index";
	}
}
