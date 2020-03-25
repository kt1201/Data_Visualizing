package com.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("sample")
public class DataController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index() {
		return "sample/index";
	}
}
