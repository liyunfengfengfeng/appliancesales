package com.appliancesales.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.appliancesales.entity.Contact;
import com.appliancesales.service.ContactService;

/**
 * 
 *  联系我们控制层
 */
@Controller
@RequestMapping(value="/contact")
public class ContactController {
	@Autowired
	private ContactService contactService;
	@RequestMapping(value="/contactUs")
	public String contactUs(){
		
		return "contact";
	}
	@RequestMapping(value="/sendMessage")
	public String sendMessage(Contact contact){
		contactService.insertNonEmptyContact(contact);
		return "contact";
	}
}
