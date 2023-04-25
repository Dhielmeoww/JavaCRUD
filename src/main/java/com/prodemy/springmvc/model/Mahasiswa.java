/**
 * 
 */
package com.prodemy.springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author wyant
 *
 */
@Data
@NoArgsConstructor
@Entity
@Table(name = "\"MAHASISWA\"")
public class Mahasiswa {
	@Id
	@Column(name = "\"MHS_ID\"")
	private String id;

	@Column(name = "\"MHS_NIM\"")
	private String nim;

	@Column(name = "\"MHS_NAMA\"")
	private String nama;

	@Column(name = "\"MHS_ALAMAT\"")
	private String alamat;

}