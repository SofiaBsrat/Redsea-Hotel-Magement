package com.ea.redsea.service;

import java.util.List;

import com.ea.redsea.domain.Address;


 
public interface AddressService {

	public void save(Address address);
	public void update(Address address);
	public List<Address> findAll();
 
	public Address findOne(Long id);

}
