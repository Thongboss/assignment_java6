package com.example.demo_java6.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
	String from;
	String to;
	String subject;
	String body;
	String[] cc;
	String[] bcc;
	String[] attachments;
	
	public MailInfo(String to, String subject, String body) {
		this.from = "thongvhph13968@gmail.com";
		this.to = to;
		this.subject = subject;
		this.body = body;
	}
}
