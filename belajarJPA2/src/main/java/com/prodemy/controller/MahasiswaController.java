package com.prodemy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
import lombok.extern.log4j.Log4j2;

import com.prodemy.model.Mahasiswa;
import com.prodemy.service.MahasiswaService;

/**
 * @author wyant
 *
 */
@RestController
@Log4j2
public class MahasiswaController {
	@Autowired
	private MahasiswaService mhsService;
	
	@RequestMapping("/mhs")
	public List<Mahasiswa> getAllMahasiswa(){
		System.out.println("getAllMhs");
		return mhsService.getAllMahasiswa();
	}
	
	@RequestMapping("/mhs/{id}")
	public Mahasiswa getMahasiswa(@PathVariable int id){
		return mhsService.getMahasiswa(id);
	}
	
	@RequestMapping(value="/mhs", method=RequestMethod.POST)
	public void insertMhs(@RequestBody Mahasiswa mhs) {
		mhsService.insert(mhs);
	}
	
	@RequestMapping(value="/mhs", method=RequestMethod.PUT)
	public void editMhs(@RequestParam int id, @RequestBody Mahasiswa mhs) {
		mhsService.update(mhs, id);
	}
	
	@RequestMapping(value="/mhs", method=RequestMethod.DELETE)
	public void deleteMhs(@RequestParam int id) {
		mhsService.deleteById(id);
	}
	
//	Logger logger = LoggerFactory.getLogger(MahasiswaController.class);

    @RequestMapping("/logging")
    public String index() {
        log.trace("A TRACE Message");
        log.debug("A DEBUG Message");
        log.info("An INFO Message");
        log.warn("A WARN Message");
        log.error("An ERROR Message");

        return "Howdy! Check out the Logs to see the output...";
    }
}

