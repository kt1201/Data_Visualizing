package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Data;
import com.demo.repositories.DataRepository;

@Service("dataService")
public class DataServiceImpl implements DataService{
	
	@Autowired
	private DataRepository dataRepository;
	
	@Override
	public Iterable<Data> findAll() {
		return dataRepository.findAll();
	}

}
