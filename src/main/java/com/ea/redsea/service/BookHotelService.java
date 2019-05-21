package com.ea.redsea.service;

import java.util.List;

import com.ea.redsea.domain.BookHotel;






 
public interface BookHotelService {

	public void save(BookHotel bookhotel);
  		
	public void update(BookHotel bookhotel);
	public List<BookHotel> findAll();
	public void delete(Long id);
	

	public BookHotel findOne(Long id);
	
	
	
		
}
