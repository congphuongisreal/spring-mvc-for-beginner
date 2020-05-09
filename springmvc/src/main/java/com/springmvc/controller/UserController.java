package com.springmvc.controller;


import com.springmvc.dao.UserDao;
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

import java.util.List;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user")
	public String sayUser(Model model){
		List<User> users = userService.getAllUsers();
		model.addAttribute("users",users);
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

}
