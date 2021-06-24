package com.pakfro.DojosAndNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.pakfro.DojosAndNinjas.models.Ninja;

@Repository
public interface ninjaRepository extends CrudRepository <Ninja, Long>{
	List<Ninja> findAll();

}
