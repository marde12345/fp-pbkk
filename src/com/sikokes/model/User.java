package com.sikokes.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="username")
	private String username;

	@Column(name="password")
	private String password;
	
	@Column(name="enabled")
	private int enabled;
	
	@Column(name="nama_lengkap")
	private String nama_lengkap;
	
	@Column(name="foto")
	private String foto;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
	public String getNamaLengkap() {
		return nama_lengkap;
	}

	public void setNamaLengkap(String nama_lengkap) {
		this.nama_lengkap = nama_lengkap;
	}
	
	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String username, String password, int enabled, String nama_lengkap, String foto) {
		super();
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.nama_lengkap = nama_lengkap;
		this.foto = foto;
	}
	

}
