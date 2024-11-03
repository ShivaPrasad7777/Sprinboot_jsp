package com.example.springbootmv.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springbootmv.model.Employee;
import com.example.springbootmv.repo.springbootRepo;

@Service
public class springbootService  {
	@Autowired
	private springbootRepo springRepo;

	

	public List<Employee> list() {
		// TODO Auto-generated method stub
		return springRepo.findAll();
	}



	public void save(Employee em) {
		// TODO Auto-generated method stub
		springRepo.save(em);
		
	}



	public Optional<Employee> findById(Long id) {
		// TODO Auto-generated method stub
		
		return springRepo.findById(id);
	}



	public void delete(Long id) {
		// TODO Auto-generated method stub
		springRepo.deleteById(id);
		
	}
	
	

}
