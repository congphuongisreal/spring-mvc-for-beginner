package com.springmvc.controller;

import com.springmvc.model.Role;
import com.springmvc.model.RoleDetail;
import com.springmvc.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RoleController {

	@Autowired
	private RoleService roleService;

	@RequestMapping(value = "/role",method = RequestMethod.GET)
	public String sayRole(Model model){
		model.addAttribute("active_role","class=\"mm-active\"");
		model.addAttribute("roleObj",new Role());
		model.addAttribute("roleDetailObj",new RoleDetail());
		model.addAttribute("roles",roleService.getAllRole());
		model.addAttribute("roleDetails",roleService.getAllDetail());
		return "role";
	}

	@RequestMapping(value = "/role/add",method = RequestMethod.POST)
	public String addRole(@ModelAttribute(value = "RoleObj") Role role){
		roleService.addRole(role);
		return "redirect:/role";
	}

	@RequestMapping(value = "/role/update/{roleId}",method = RequestMethod.GET)
	public ModelAndView updateRole(@PathVariable(value = "roleId") long roleId){
		Role role = roleService.getRoleById(roleId);
		return new ModelAndView("edit_role","roleObj",role);
	}

	@RequestMapping(value ="/role/update",method = RequestMethod.POST)
	public String updateRole(@ModelAttribute(value = "roleObj") Role role){
		roleService.updateRole(role);
		return "redirect:/role";
	}

	@RequestMapping(value = "/role/delete/{roleId}")
	public String deleteRole (@PathVariable(value = "roleId") long roleId){
		roleService.deleteRole(roleId);
		return "redirect:/role";
	}

	@RequestMapping(value = "/role/info/{roleId}",method = RequestMethod.GET)
	public ModelAndView infoRole(@PathVariable(value = "roleId") long roleId){
		Role role = roleService.getRoleById(roleId);
		return new ModelAndView("edit_role","roleObj",role);
	}

	@RequestMapping(value = "/detail/add",method = RequestMethod.POST)
	public String addRoleDetail(@ModelAttribute(value = "roleDetailObj") RoleDetail roleDetail){
		roleService.addRoleDetail(roleDetail);
		return "redirect:/role";
	}

	@RequestMapping(value = "/detail/update/{roleDetailId}",method = RequestMethod.GET)
	public ModelAndView updateRoleDetail(@PathVariable(value = "roleDetailId") long roleDetailId){
		RoleDetail roleDetail = roleService.getDetailById(roleDetailId);
		return new ModelAndView("edit_role_detail","roleDetailObj",roleDetail);
	}

	@RequestMapping(value ="/detail/update",method = RequestMethod.POST)
	public String updateRoleDetail(@ModelAttribute(value = "roleDetailObj") RoleDetail roleDetail){
		roleService.updateRoleDetail(roleDetail);
		return "redirect:/role";
	}

	@RequestMapping(value = "/detail/delete/{roleDetailId}")
	public String deleteRoleDetail (@PathVariable(value = "roleDetailId") long roleDetailId){
		roleService.deleteRoleDetail(roleDetailId);
		return "redirect:/role";
	}

	@RequestMapping(value = "/detail/info/{roleDetailId}",method = RequestMethod.GET)
	public ModelAndView infoRoleDetail(@PathVariable(value = "roleDetailId") long roleDetailId){
		RoleDetail roleDetail = roleService.getDetailById(roleDetailId);
		return new ModelAndView("edit_role_detail","roleDetailObj",roleDetail);
	}
}
