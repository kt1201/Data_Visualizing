package com.demo.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.demo.entities.Data;
import com.demo.services.DataService;

@RestController
@RequestMapping("api/sample")
public class DataRestController {
	
	@Autowired
	private DataService dataService;
	
	@RequestMapping(value = "findall", method = RequestMethod.GET,
			produces = {MimeTypeUtils.APPLICATION_JSON_VALUE})
	public ResponseEntity<Iterable<Data>> findAll() {
		try {
			return new ResponseEntity<Iterable<Data>>(dataService.findAll(), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<Iterable<Data>>(HttpStatus.BAD_REQUEST);
		}
	}

}
