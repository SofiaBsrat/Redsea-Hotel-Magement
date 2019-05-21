package com.ea.redsea.dao;

import com.ea.redsea.domain.UserCredentials;

public interface UserCredentialsDao extends GenericDao<UserCredentials> {
  
	public UserCredentials findByUserName(String userName);
}
