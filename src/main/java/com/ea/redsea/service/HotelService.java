package com.ea.redsea.service;

import java.util.List;

import com.ea.redsea.domain.Hotel;




 
public interface HotelService {

	public void save(Hotel hotel);
  		
	public void update(Hotel hotel);
	public List<Hotel> findAll();
	public void delete(Long id);
	

	public Hotel findOne(Long id);
	
	
	
		
}
