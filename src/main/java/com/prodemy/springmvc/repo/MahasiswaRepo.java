package com.prodemy.springmvc.repo;
import com.prodemy.springmvc.model.*;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.jpa.repository.Query;


public interface MahasiswaRepo extends CrudRepository<Mahasiswa, String>{
	
}
