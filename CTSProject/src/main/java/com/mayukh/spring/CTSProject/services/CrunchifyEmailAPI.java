package com.mayukh.spring.CTSProject.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service("crunchifyEmail")
public class CrunchifyEmailAPI {

	@Autowired
	private MailSender crunchifymail;
	
	public void crunchifyReadyToSendEmail(String toAddress, String fromAddress, String subject, String msgBody) {
		 
		SimpleMailMessage crunchifyMsg = new SimpleMailMessage();
		crunchifyMsg.setFrom(fromAddress);
		crunchifyMsg.setTo(toAddress);
		crunchifyMsg.setSubject(subject);
		crunchifyMsg.setText(msgBody);
		crunchifymail.send(crunchifyMsg);
	}
}
