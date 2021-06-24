package com.pakfro.DojosAndNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.pakfro.DojosAndNinjas.models.Dojo;
import com.pakfro.DojosAndNinjas.models.Ninja;
import com.pakfro.DojosAndNinjas.repositories.dojoRepository;
import com.pakfro.DojosAndNinjas.repositories.ninjaRepository;

@Service
public class DojoNinja_Services {

	private dojoRepository dojoRepo;
	private ninjaRepository ninjaRepo;
	
	// Generate the constructors 
	public DojoNinja_Services(dojoRepository dojoRepo, ninjaRepository ninjaRepo) {
		super();
		this.dojoRepo = dojoRepo;
		this.ninjaRepo = ninjaRepo;
	}
	
	// Make a Dojo
	
	public Dojo createDojo(Dojo newDojo) {
		return dojoRepo.save(newDojo);
	}
	
	// Make a Ninja
	
	public Ninja createNinja(Ninja newNinja) {
		return ninjaRepo.save(newNinja);
	}
	
	// Display All Dojos
	
	public List<Dojo> getAllDojos() {
		return (List<Dojo>) dojoRepo.findAll();
	}
	
	
	// Display All Ninjas
	
	public List<Ninja> getAllNinjas() {
		return (List<Ninja>) ninjaRepo.findAll();
	}
	
//	// Display one Ninja
//	
//	public List<Ninja> getOneNinja(Long id) {
//		Optional<Ninja> optionalNinja = this.ninjaRepo.findById(id);
//		if (optionalNinja.isPresent()) {
//			return optionalNinja.get();
//		}else {
//			return null;
//		}
//	}
//	

	// Display one Dojo
	
	public Dojo getDojo (Long id) {
		Optional<Dojo> optionalDojo = this.dojoRepo.findById(id);
		if (optionalDojo.isPresent()) {
			return optionalDojo.get();
		}else {
			return null;
		}
	}
	
	
}
