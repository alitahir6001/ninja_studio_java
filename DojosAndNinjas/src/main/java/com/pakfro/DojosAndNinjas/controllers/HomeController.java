package com.pakfro.DojosAndNinjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pakfro.DojosAndNinjas.models.Dojo;
import com.pakfro.DojosAndNinjas.models.Ninja;
import com.pakfro.DojosAndNinjas.services.DojoNinja_Services;

@Controller

public class HomeController {
	
	private final DojoNinja_Services dnServ;

	public HomeController(DojoNinja_Services dnServ) {
		super();
		this.dnServ = dnServ;
	}

	// This is our index route that will show all of our Dojos
	
	@RequestMapping("")
	public String index (Model model) {
		model.addAttribute("allDojos", dnServ.getAllDojos());
		
		return "index.jsp";
	}
	
	// Show one Dojo with that Dojo's Ninjas.
	@GetMapping("/showDojo/{id}")
	public String showDojo(Model model, @PathVariable ("id")Long id) {
//		model.addAttribute("allNinjas", dnServ.getAllNinjas());
		Dojo myDojo = this.dnServ.getDojo(id);
		model.addAttribute("thisDojo", myDojo);
		
		return "oneDojo.jsp";
	}
	
	
	
	// This is the view with the form to create a Dojo
	@GetMapping("/newDojo")
	public String dojo (@ModelAttribute("addDojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	
	// Create a Dojo ACTION = /makeDojo
	
	@PostMapping("/makeDojo")
	public String createDojo (@Valid @ModelAttribute ("addDojo") Dojo dojo, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
		
		}else {
			dnServ.createDojo(dojo);
		}
		
		return "redirect:/";
	}
	
	// This is the view with the form  to create a Ninja
	@GetMapping ("/newNinja")
	public String ninja (@ModelAttribute("addNinja") Ninja ninja, Model model) {
		model.addAttribute("allDojos", dnServ.getAllDojos());
		return "newNinja.jsp";
	}
	
	
	
	// Create a Ninja ACTION = /makeNinja
	
	@PostMapping("/makeNinja")
	public String createNinja (@Valid @ModelAttribute("addNinja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
		} else {
			dnServ.createNinja(ninja);
		}
		
		return "redirect:/";
		
	}
}
