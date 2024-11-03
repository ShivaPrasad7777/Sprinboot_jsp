package com.example.springbootmv.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springbootmv.model.Employee;

@Repository
public interface springbootRepo extends JpaRepository<Employee, Long>{

}
