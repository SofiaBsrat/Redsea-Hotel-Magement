package com.ea.redsea.dao.impl;

 

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.ea.redsea.dao.HotelDao;
import com.ea.redsea.domain.Hotel;




@SuppressWarnings("unchecked")
@Repository
public class HotelDaoImpl extends GenericDaoImpl<Hotel> implements HotelDao {

	public HotelDaoImpl() {
		super.setDaoType(Hotel.class );
		}

 
 }