package com.springmvc.controller;

import com.springmvc.model.Provider;
import com.springmvc.service.ProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProviderController {

	@Autowired
	private ProviderService providerService;

	@RequestMapping(value = "/provider",method = RequestMethod.GET)
	public String sayProvider(Model model){
		model.addAttribute("active_provider","class=\"mm-active\"");
		model.addAttribute("providerObj",new Provider());
		model.addAttribute("providers",providerService.getAllProvider());
		return "provider";
	}

	@RequestMapping(value = "/provider/add",method = RequestMethod.POST)
	public String addProvider(@ModelAttribute(value = "providerObj") Provider provider){
		providerService.addProvider(provider);
		return "redirect:/provider";
	}

	@RequestMapping(value = "/provider/info/{providerId}",method =  RequestMethod.GET)
	public String infoProvider(@PathVariable("providerId") long providerId,Model model){
		Provider provider =  providerService.getProviderById(providerId);
		model.addAttribute("active_provider","class=\"mm-active\"");
		model.addAttribute("providerObj",provider);
		model.addAttribute("readonly","true");
		model.addAttribute("check",1);
		return "edit_provider";
	}

	@RequestMapping(value = "/provider/update/{providerId}",method = RequestMethod.GET)
	public String updateProvider(@PathVariable(value = "providerId") long providerId,Model model){
		Provider provider =  providerService.getProviderById(providerId);
		model.addAttribute("active_provider","class=\"mm-active\"");
		model.addAttribute("providerObj",provider);
		return "edit_provider";
	}

	@RequestMapping(value = "/provider/update",method = RequestMethod.POST)
	public String updateProvider(@ModelAttribute(value = "providerObj")Provider provider){
		providerService.updateProvider(provider);
		return "redirect:/provider";
	}

	@RequestMapping(value = "/provider/delete/{providerId}")
	public String deleteProvider(@PathVariable(value = "providerId") long providerId){
		providerService.deleteProvider(providerId);
		return "redirect:/provider";
	}
}
