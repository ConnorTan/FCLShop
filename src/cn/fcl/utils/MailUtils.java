package cn.fcl.utils;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by WunHwanTseng on 2016/10/30.
 */
public class MailUtils {

	public static void regMailSend(String username,Integer state) throws MessagingException {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.163.com");
        mailSender.setPort(25);
        mailSender.setUsername("1010045050@163.com");
        mailSender.setPassword("jojo3171727");
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true, "utf-8");
        mimeMessageHelper.setFrom("1010045050@163.com");
        mimeMessageHelper.setTo("qianjianyutong@163.com");
        mimeMessageHelper.setSubject("FCL�����̳ǻ�ӭ�㣡");
        mimeMessageHelper.setText("<h1>��������FCL�̳ǹٷ������ʼ�!������������ɼ������!</h1><h3><a href='http://localhost:8080/FCLShop/user_active?username="+username+"&state="+ 1 +"'>http://localhost:8080/FCLShop/user_active?username="+username+"&&state="+ 1 +"</a></h3>", true);
        mailSender.send(mimeMessage);
    }
}
