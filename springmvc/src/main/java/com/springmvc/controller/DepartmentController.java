package com.springmvc.controller;

import com.springmvc.model.Department;
import com.springmvc.model.Job;
import com.springmvc.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;

	@RequestMapping(value = "/department", method = RequestMethod.GET)
	public String sayDepartment(Model model) {
		department(model);
		return "department";
	}

	public void department(Model model){
		model.addAttribute("departmentObj", new Department());
		model.addAttribute("jobObj", new Job());
		model.addAttribute("active_department", "class=\"mm-active\"");
		model.addAttribute("jobs", departmentService.getAllJob());
		model.addAttribute("departments", departmentService.getAllDepartment());
	}

	@RequestMapping(value = "/department/add", method = RequestMethod.POST)
	public String addDepartment(@Valid @ModelAttribute(value = "department") Department department,BindingResult result,Model model) {
		if(result.hasErrors()){
			model.addAttribute("success",1);
			department(model);
			return "department";
		}
		departmentService.addDepartment(department);
		return "redirect:/department";
	}

	@RequestMapping(value = "/department/getId/{departmentId}")
	public ModelAndView getDepartmentId(@PathVariable(value = "departmentId") long departmentId) {
		Department department = departmentService.getDepartmentById(departmentId);
		return new ModelAndView("edit_department", "departmentObj", department);
	}

	@RequestMapping(value = "/department/update", method = RequestMethod.POST)
	public String updateDepartment(@Valid @ModelAttribute(value = "departmentObj") Department department,BindingResult result) {
		if(result.hasErrors())
			return "edit_department";
		departmentService.updateDepartment(department);
		return "redirect:/department";
	}

	@RequestMapping(value = "/department/delete/{departmentId}")
	public String deleteDepartment(@PathVariable(value = "departmentId") long departmentId) {
		departmentService.deleteDepartment(departmentId);
		return "redirect:/department";
	}

	@RequestMapping(value = "/job/delete/{jobId}")
	public String deleteJob(@PathVariable(value = "jobId") long jobId) {
		departmentService.deleteJob(jobId);
		return "redirect:/department";
	}

	@RequestMapping(value = "/job/add", method = RequestMethod.POST)
	public String addJob(@Valid @ModelAttribute(value = "jobObj") Job job, BindingResult result,Model model) {
		if(result.hasErrors()){
			department(model);
			model.addAttribute("success",1);
			return "department";
		}
		departmentService.addJob(job);
		return "redirect:/department";
	}

	@RequestMapping(value = "/job/getId/{jobId}", method = RequestMethod.GET)
	public ModelAndView getId(@PathVariable(value = "jobId") long jobId) {
		Job job = departmentService.getJobById(jobId);
		return new ModelAndView("edit_job", "jobObj", job);
	}

	@RequestMapping(value = "/job/update", method = RequestMethod.POST)
	public String updateJob(@Valid @ModelAttribute(value = "jobObj") Job job,BindingResult result) {
		if(result.hasErrors())
			return "edit_job";
		departmentService.updateJob(job);
		return "redirect:/department";
	}

	@RequestMapping(value = "/job/info/{jobId}",method = RequestMethod.GET)
	public String infoJob(@PathVariable(value = "jobId") long jobId,Model model){
		Job job = departmentService.getJobById(jobId);
		model.addAttribute("jobObj",job);
		model.addAttribute("readonly","true");
		model.addAttribute("active_department", "class=\"mm-active\"");
		model.addAttribute("check",1);
		return "edit_job";
	}

	@RequestMapping(value = "/department/info/{departmentId}",method = RequestMethod.GET)
	public String infoDepartment(@PathVariable(value = "departmentId") long departmentId,Model model){
		Department department = departmentService.getDepartmentById(departmentId);
		model.addAttribute("departmentObj",department);
		model.addAttribute("readonly","true");
		model.addAttribute("active_department", "class=\"mm-active\"");
		model.addAttribute("check",1);
		return "edit_department";
	}

}
