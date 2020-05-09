package com.springmvc.controller;


import com.springmvc.model.Role;
import com.springmvc.model.User;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user")
	public String sayUser(Model model){
		model.addAttribute("userObj",new User());
		model.addAttribute("roleObj",new Role());
		model.addAttribute("users",userService.getAllUsers());
		model.addAttribute("roles",userService.getAllRole());
		model.addAttribute("active_user","\"class=\\\"mm-active\\\"\"");
		return "user";
	}

	@RequestMapping(value = "/user/update/{userId}",method = RequestMethod.GET)
	public ModelAndView updateUser(@PathVariable(value = "userId") long userId){
		User user = userService.getUserById(userId);
		return new ModelAndView("edit_user","userObj",user);
	}

	@RequestMapping(value = "/user/update",method = RequestMethod.POST)
	public String updateUser(@ModelAttribute(value = "userObj") User user){
		userService.updateUser(user);
		return "redirect:/user";
	}

	@RequestMapping(value = "/user/info/{userId}",method = RequestMethod.GET)
	public String infoUser(@PathVariable(value = "userId")long userId,Model model){
		User user = userService.getUserById(userId);
		model.addAttribute("readonly","true");
		model.addAttribute("userObj",user);
		model.addAttribute("active_user","\"class=\\\"mm-active\\\"\"");
		model.addAttribute("check",1);
		return "edit_user";
	}

	@RequestMapping(value = "/role/add",method = RequestMethod.POST)
	public String addRole(@ModelAttribute(value = "RoleObj") Role role){
		userService.addRole(role);
		return "redirect:/user";
	}

	@RequestMapping(value = "/role/delete/{roleId}")
	public String deleteRole (@PathVariable(value = "roleId") long roleId){
		userService.deleteRole(roleId);
		return "redirect:/user";
	}

}
