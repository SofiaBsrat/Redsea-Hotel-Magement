package com.ea.redsea.dao.impl;

 

import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.ea.redsea.dao.AddressDao;
import com.ea.redsea.domain.Address;



@SuppressWarnings("unchecked")
@Repository
public class AddressDaoImpl extends GenericDaoImpl<Address> implements AddressDao {

	public AddressDaoImpl() {
		super.setDaoType(Address.class );
		}

 
 }