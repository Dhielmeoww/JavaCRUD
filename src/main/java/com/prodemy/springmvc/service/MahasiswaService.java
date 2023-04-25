/**
 * 
 */
package com.prodemy.springmvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.prodemy.springmvc.repo.MahasiswaRepo;

import com.prodemy.springmvc.model.Mahasiswa;

/**
 * @author wyant
 *
 */
public interface MahasiswaService {
	public Mahasiswa findById(String id) throws Exception;

	public void deleteById(String id) throws Exception;

	public void insert(Mahasiswa mhs) throws Exception;

	public void update(Mahasiswa mhs) throws Exception;

	public List<Mahasiswa> findAll() throws Exception;
}
