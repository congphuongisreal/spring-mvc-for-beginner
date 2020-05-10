package com.springmvc.controller;

import com.springmvc.controller.com.springmvc.file.FileUploadUtility;
import com.springmvc.model.Product;
import com.springmvc.model.Type;
import com.springmvc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;


@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/product")
	public String sayProduct(Model model) {
		model.addAttribute("productObj", new Product());
		model.addAttribute("products", productService.getAllProduct());
		model.addAttribute("types", productService.getAllType());
		model.addAttribute("typeObj", new Type());
		model.addAttribute("active_product", "class=\"mm-active\"");
		return "product";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value = "productObj") Product product, HttpServletRequest request) throws IOException {
		productService.addProduct(product);
		if(!product.getProductImage().getOriginalFilename().equals("")){
			FileUploadUtility.uploadFile(request,product.getProductImage(),product.getProductId());
		}
		return "redirect:/product";
	}

	@RequestMapping(value = "/product/info/{productId}", method = RequestMethod.GET)
	public String infoProduct(@PathVariable(value = "productId") long productId, Model model) {
		Product product = productService.getProductById(productId);
		model.addAttribute("productObj", product);
		model.addAttribute("check", 1);
		model.addAttribute("readonly", "true");
		model.addAttribute("active_product", "class=\"mm-active\"");
		return "edit_product";
	}

	@RequestMapping(value = "/product/getId/{productId}", method = RequestMethod.GET)
	public String updateProduct(@PathVariable(value = "productId") long productId,Model model) {
		Product product = productService.getProductById(productId);
		model.addAttribute("productObj", product);
		model.addAttribute("active_product", "class=\"mm-active\"");
		return "edit_product";

	}

	@RequestMapping(value = "/product/update", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute(value = "productObj") Product product) {
		productService.updateProduct(product);
		return "redirect:/product";
	}

	@RequestMapping(value = "/product/delete/{productId}")
	public String deleteProduct(@PathVariable(value = "productId") long productId) {
		productService.deleteProductId(productId);
		FileUploadUtility.deleteFile(productId);
		return "redirect:/product";
	}

	@RequestMapping(value = "/type/add", method = RequestMethod.POST)
	public String addType(@Valid @ModelAttribute(value = "typeObj") Type type) {
		productService.addType(type);
		return "redirect:/product";
	}

	@RequestMapping(value = "/type/delete/{typeId}")
	public String deleteType(@PathVariable(value = "typeId") long typeId) {
		productService.deleteType(typeId);
		return "redirect:/product";
	}

	@RequestMapping(value = "/type/update/{typeId}", method = RequestMethod.GET)
	public ModelAndView updateType(@PathVariable(value = "typeId") long typeId) {
		Type type = productService.getTypeById(typeId);
		return new ModelAndView("edit_type", "typeObj", type);
	}

	@RequestMapping(value = "/type/update", method = RequestMethod.POST)
	public String updateType(@ModelAttribute(value = "typeObj") Type type) {
		productService.updateType(type);
		return "redirect:/product";
	}

	@RequestMapping(value = "/type/info/{typeId}", method = RequestMethod.GET)
	public String infoType(@PathVariable(value = "typeId") long typeId, Model model) {
		Type type = productService.getTypeById(typeId);
		model.addAttribute("typeObj", type);
		model.addAttribute("check", 1);
		model.addAttribute("readonly", "true");
		return "edit_type";
	}

	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSize(10240000);
		return multipartResolver;
	}

}
