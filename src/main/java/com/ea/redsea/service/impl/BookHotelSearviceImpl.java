package com.ea.redsea.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ea.redsea.dao.BookHotelDao;
import com.ea.redsea.domain.BookHotel;




@Service
@Transactional 
public class BookHotelSearviceImpl implements com.ea.redsea.service.BookHotelService {
	
	
 	@Autowired
	private BookHotelDao bookhotelDao;

    public void save( BookHotel bookHotel) {  		
    	bookhotelDao.save(bookHotel);
	}
	
	
    public void update( BookHotel bookhotel) {  		
    	bookhotelDao.update(bookhotel);
	}
	
	
	public List<BookHotel> findAll() {
		return (List<BookHotel>)bookhotelDao.findAll();
	}

 	public BookHotel findOne(Long id) {
		return bookhotelDao.findOne(id);
	}


	@Override
	public void delete(Long id) {
		bookhotelDao.delete(id);
		
	}


	
 
}
