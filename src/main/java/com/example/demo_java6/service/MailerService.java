package com.example.demo_java6.service;


import javax.mail.MessagingException;

import com.example.demo_java6.model.MailInfo;



public interface MailerService {

	void queue(String to, String subject, String body);

	void queue(MailInfo mail);

	void send(String to, String subject, String body) throws MessagingException;

	void send(MailInfo mail) throws MessagingException;

}
