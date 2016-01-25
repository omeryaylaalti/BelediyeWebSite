package com.omeryaylaalti.project.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	
	 public void Gonder(String mail, String mesajkonu , String mesajicerik){
         final String username = "omer.yaylaalti@bil.omu.edu.tr";
         final String password = "om031293?ya"; 
         Properties props = new Properties();
         props.put("mail.smtp.auth", "true");
         props.put("mail.smtp.starttls.enable", "true");
         props.put("mail.smtp.host", "smtp.gmail.com");
         props.put("mail.smtp.port", "587");

         Session session = Session.getInstance(props,
                       new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                       return new PasswordAuthentication(username, password);
                }
         }); 
         try {

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("omer.yaylaalti@bil.omu.edu.tr"));
                message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mail));
                message.setSubject(mesajkonu);
                message.setText(mesajicerik); 
                Transport.send(message);
                System.out.println("Mesaj başarıyla gönderildi.");

         } catch (MessagingException e) {
                throw new RuntimeException(e);
         }
   }


}
