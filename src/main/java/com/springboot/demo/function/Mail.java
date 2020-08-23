package com.springboot.demo.function;

import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail extends Authenticator{
	/*public static class SMTPAuthenticator extends Authenticator {
		public PasswordAuthentication getPasswordAuthentication(){
			return new PasswordAuthentication("mandalaytravelagency","1234567asd");
	
		}*/
/*	public static void main(String[] args) {
		sendMessage("aungkyawmon.am@gmail.com","39393993");
	}
	*/
	public Mail() {
		
	}
	public static void sendMessage(String email, String code)  {
		String d_uname = "myanmarartandculture";
		String d_password = "Aungpyaesone1234567@f";
		String d_host = "smtp.gmail.com";
		int d_port = 465;
		
		String m_to = new String();
		String m_from = "myanmarartandculture@gmail.com";
		String m_subject = new String();
		
		String m_text = new String();
		m_to = email;
		m_subject = "Hello! ";
		m_text = code;
		
		Properties props = new Properties();
		props.put("mail.smtp.host", d_host);
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.user", m_from);
		props.put("mail.password", d_password);
		props.put("mail.port", d_port);
		
		Session ses= Session.getInstance(props);

		
		try {
			MimeMessage msg = new MimeMessage(ses);
			msg.setFrom(new InternetAddress(m_from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
			msg.setSubject(m_subject);
			msg.setText(m_text);
			Transport transport = ses.getTransport("smtp");
			transport.connect(d_host,d_port,d_uname,d_password);
			transport.sendMessage(msg, msg.getAllRecipients());
			transport.close();
			System.out.println("Email sent!");
		}
		 catch (MessagingException e) {throw new RuntimeException(e);}    
		
	}
}