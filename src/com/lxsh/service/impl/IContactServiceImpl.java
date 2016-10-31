package com.lxsh.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lxsh.dao.IContactDao;
import com.lxsh.model.Message;
import com.lxsh.service.IContactService;

@Service("contactService")
public class IContactServiceImpl implements IContactService{
	
	@Resource
	private IContactDao icd;

	public void setIcd(IContactDao icd){
		this.icd=icd;
	}
	@Override
	public boolean contactUs(Message message) {
		int result = icd.contactUs(message);
		if(result>0){
			return true;
		}else{
		return false;
		}
	}

}
