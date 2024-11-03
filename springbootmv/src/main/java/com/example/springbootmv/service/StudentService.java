package com.example.springbootmv.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springbootmv.model.Student;
import com.example.springbootmv.repo.StudentRepo;

@Service
public class StudentService {
	@Autowired
	private StudentRepo sr;

	public List<Student> studentList() {
		// TODO Auto-generated method stub
		return sr.findAll();
	}

	public void save(Student stu) {
		// TODO Auto-generated method stub
		sr.save(stu);
		
	}

	public Optional<Student> findById(Integer id) {
		// TODO Auto-generated method stub
		return sr.findById(id);
	}

	public void deletebyId(Integer id) {
		// TODO Auto-generated method stub
		sr.deleteById(id);
		
	}

}
