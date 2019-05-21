package com.ea.redsea.dao.impl;

 

import java.util.List;

import javax.persistence.EntityGraph;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.ea.redsea.dao.MemberDao;
import com.ea.redsea.domain.Member;



@SuppressWarnings("unchecked")
@Repository
public class MemberDaoImpl extends GenericDaoImpl<Member> implements MemberDao {

	public MemberDaoImpl() {
		super.setDaoType(Member.class );
		}

 
 }