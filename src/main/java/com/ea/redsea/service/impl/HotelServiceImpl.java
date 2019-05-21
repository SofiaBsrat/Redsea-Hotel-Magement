package com.ea.redsea.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ea.redsea.dao.HotelDao;
import com.ea.redsea.domain.Hotel;





@Service
@Transactional 
public class HotelServiceImpl implements com.ea.redsea.service.HotelService {
	
	
 	@Autowired
	private HotelDao hotelDao;

    public void save( Hotel hotel) {  		
    	hotelDao.save(hotel);
	}
	
	
    public void update( Hotel hotel) {  		
    	hotelDao.update(hotel);
	}
	
	
	public List<Hotel> findAll() {
		return (List<Hotel>)hotelDao.findAll();
	}

 	public Hotel findOne(Long id) {
		return hotelDao.findOne(id);
	}


	@Override
	public void delete(Long id) {
		hotelDao.delete(id);
		
	}


	
 
}
