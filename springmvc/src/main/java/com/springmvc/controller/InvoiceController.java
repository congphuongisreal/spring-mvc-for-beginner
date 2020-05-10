package com.springmvc.controller;


import com.springmvc.model.Product;
import com.springmvc.model.PurchaseInvoice;
import com.springmvc.model.SaleInvoice;
import com.springmvc.service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class InvoiceController {

	@Autowired
	private InvoiceService invoiceService;

	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
	Date date = new Date();

	@RequestMapping(value = "/invoice", method = RequestMethod.GET)
	public String sayInvoice(Model model) {
		model.addAttribute("purchaseObj", new PurchaseInvoice());
		model.addAttribute("saleObj", new SaleInvoice());
		model.addAttribute("active_invoice", "class=\"mm-active\"");
		model.addAttribute("saleInvoices", invoiceService.getAllSale());
		model.addAttribute("purchaseInvoices", invoiceService.getAllPurchase());
		return "invoice";
	}

	@RequestMapping(value = "/sale/add", method = RequestMethod.POST)
	public String addSaleInvoice(@Valid @ModelAttribute(value = "saleObj") SaleInvoice saleInvoice) {
		long total = 0;
		List<Product> products = saleInvoice.getProducts();

		for(Product p : products)
			total += p.getNumber() * p.getPrice();
		saleInvoice.setTotal(total);
		saleInvoice.setDate(formatter.format(date));
		saleInvoice.setEnable(true);
		invoiceService.addSaleInvoice(saleInvoice);
		return "redirect:/invoice";
	}

	@RequestMapping(value = "/sale/info/{saleId}", method = RequestMethod.GET)
	public String infoSaleInvoice(@PathVariable(value = "saleId") long saleId, Model model) {
		SaleInvoice saleInvoice = invoiceService.getSaleById(saleId);
		model.addAttribute("active_invoice", "class=\"mm-active\"");
		model.addAttribute("saleObj", saleInvoice);
		model.addAttribute("readonly","true");
		model.addAttribute("check", 1);
		return "edit_sale";
	}

	@RequestMapping(value = "/sale/update/{saleId}", method = RequestMethod.GET)
	public ModelAndView updateSaleInvoice(@PathVariable(value = "saleId") long saleId) {
		SaleInvoice saleInvoice = invoiceService.getSaleById(saleId);
		return new ModelAndView("edit_sale", "saleObj", saleInvoice);
	}

	@RequestMapping(value = "/sale/update", method = RequestMethod.POST)
	public String updateSaleInvoice(@ModelAttribute(value = "saleObj") SaleInvoice saleInvoice) {
		invoiceService.updateSaleInvoice(saleInvoice);
		return "redirect:/invoice";
	}

	@RequestMapping(value = "/purchase/add", method = RequestMethod.POST)
	public String addPurchaseInvoice(@Valid @ModelAttribute(value = "purchaseObj") PurchaseInvoice purchaseInvoice) {
		long total = 0;
		List<Product> products = purchaseInvoice.getProducts();

		for(Product p : products)
			total += p.getNumber() * p.getPrice();
		purchaseInvoice.setTotal(total);
		purchaseInvoice.setDate(formatter.format(date));
		purchaseInvoice.setEnable(true);

		invoiceService.addPurchaseInvoice(purchaseInvoice);
		return "redirect:/invoice";
	}

	@RequestMapping(value = "/purchase/info/{purchaseId}", method = RequestMethod.GET)
	public String infoPurchaseInvoice(@PathVariable(value = "purchaseId") long purchaseId, Model model) {
		PurchaseInvoice purchaseInvoice = invoiceService.getPurchaseById(purchaseId);
		model.addAttribute("active_invoice", "class=\"mm-active\"");
		model.addAttribute("purchaseObj", purchaseInvoice);
		model.addAttribute("readonly","true");
		model.addAttribute("check", 1);
		return "edit_purchase";
	}

	@RequestMapping(value = "/purchase/update/{purchaseId}", method = RequestMethod.GET)
	public ModelAndView updatePurchaseInvoice(@PathVariable(value = "purchaseId") long purchaseId) {
		PurchaseInvoice purchaseInvoice = invoiceService.getPurchaseById(purchaseId);
		return new ModelAndView("edit_purchase", "purchaseObj", purchaseInvoice);
	}

	@RequestMapping(value = "/purchase/update", method = RequestMethod.POST)
	public String updateSaleInvoice(@ModelAttribute(value = "purchaseObj") PurchaseInvoice purchaseInvoice) {
		invoiceService.updatePurchaseInvoice(purchaseInvoice);
		return "redirect:/invoice";
	}
}
