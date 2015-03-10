package com.prontoitlabs.firebasedemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	private static final String INDEX = "index";

	@RequestMapping("/")
	public String index() {
		return INDEX;
	}

	@RequestMapping(value = "/home/**", method = RequestMethod.GET)
	public String home() {
		return INDEX;
	}
}
