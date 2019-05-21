package com.ea.redsea.dao.impl;

 

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.ea.redsea.dao.BookHotelDao;
import com.ea.redsea.domain.BookHotel;






@SuppressWarnings("unchecked")
@Repository
public class BookHotelDaoImpl extends GenericDaoImpl<BookHotel> implements BookHotelDao {

	public BookHotelDaoImpl() {
		super.setDaoType(BookHotel.class );
		}

 
 }