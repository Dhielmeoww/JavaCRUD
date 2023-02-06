package com.prodemy.repo;

import org.springframework.data.repository.CrudRepository;
import com.prodemy.model.Mahasiswa;

public interface MahasiswaRepository extends CrudRepository<Mahasiswa, Integer> {

}
