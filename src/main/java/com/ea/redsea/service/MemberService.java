package com.ea.redsea.service;

import java.util.List;
import java.util.Set;

import com.ea.redsea.domain.Member;
 
public interface MemberService {

	public void save(Member member);
    	public void saveFull( Member member);  		

	public List<Member> findAll();
 	public Member findOne(Long id);
 		
}
