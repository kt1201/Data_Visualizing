package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.entities.Data;

@Repository("dataRepository")
public interface DataRepository extends CrudRepository<Data, String>{
	
}
