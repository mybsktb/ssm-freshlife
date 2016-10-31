package com.lxsh.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lxsh.model.Message;
import com.lxsh.service.IContactService;

@Controller
public class ContactCtrl {
	
	@Resource(name="contactService")
	private IContactService ics;
	
	public void setIcs(IContactService ics){
		this.ics=ics;
	}
	@RequestMapping(value="/contactUs", method= RequestMethod.POST)
	public String contactUs(Message message,Model model){
		
		System.out.println(message.getName());
		boolean result = ics.contactUs(message);
		if(result){
			model.addAttribute("info", "提交成功！");
			return "contact";
		}else{
			model.addAttribute("info","提交失败！");
		return "contact";
		}
	}
}
