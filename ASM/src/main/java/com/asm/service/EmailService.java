package com.asm.service;

import com.asm.model.EmailDetail;

public interface EmailService {

    // Method
    // To send a simple email
    String sendSimpleMail(EmailDetail details);
 
    // Method
    // To send an email with attachment
    String sendMailWithAttachment(EmailDetail details);
}
