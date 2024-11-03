package com.example.springbootmv.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.springbootmv.model.Employee;
import com.example.springbootmv.service.springbootService;

@Controller
@RequestMapping("/employees")
public class springbootController {
	@Autowired
	private springbootService springService;
	
	@GetMapping
	public ModelAndView list() {
		ModelAndView mv=new ModelAndView("employee-list");
		mv.addObject("employees",springService.list());
		return mv;
	}
	
	@GetMapping("/new")
	public ModelAndView addEmp() {
		ModelAndView mv=new ModelAndView("employee-form");
		mv.addObject("employee",new Employee());
		return mv;

	}
	
	@PostMapping
	public ModelAndView saveEmp(@ModelAttribute Employee em) {
		ModelAndView mv=new ModelAndView();
		springService.save(em);
		return new ModelAndView("redirect:/employees");
		  
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView editEmp(@PathVariable Long id) {
		ModelAndView mv=new ModelAndView("employee-form");
		Optional<Employee> emp=springService.findById(id);
//		if(emp.isPresent()) {
//			mv.addObject(emp);
//		}
        emp.ifPresent(e -> mv.addObject("employee", e));
        return mv;

	}
	
	@DeleteMapping("/delete/{id}")
	public ModelAndView deleteEmp(@PathVariable Long id) {
		springService.delete(id);
		return new ModelAndView("redirect:/employees");
	}
	
	

}
