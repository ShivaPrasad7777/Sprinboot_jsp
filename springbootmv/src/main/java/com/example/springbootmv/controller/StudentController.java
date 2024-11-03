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

import com.example.springbootmv.model.Student;
import com.example.springbootmv.service.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {
	
	@Autowired
	private StudentService ss;
	
	@GetMapping
	public ModelAndView studentsList() {
		ModelAndView mv=new ModelAndView("stu_homepage");
		mv.addObject("students",ss.studentList());
		return mv;
	}
	
	@GetMapping("/new")
	public ModelAndView addNewStu() {
		ModelAndView mv=new ModelAndView("stu_form");
		mv.addObject("student",new Student());
		return mv;
	}
	
	@PostMapping
	public ModelAndView saveStu(@ModelAttribute Student stu) {
		ss.save(stu);
		return new ModelAndView("redirect:/students");
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView updateStu(@PathVariable Integer id) {
		ModelAndView mv=new ModelAndView("stu_form");
		Optional<Student> st=ss.findById(id);
        st.ifPresent(s -> mv.addObject("student", s));
        return mv;

	}
	
	@DeleteMapping("/delete/{id}")
	public ModelAndView delteStu(@PathVariable Integer id) {
		ss.deletebyId(id);
		return new ModelAndView("redirect:/students");
	}

}
