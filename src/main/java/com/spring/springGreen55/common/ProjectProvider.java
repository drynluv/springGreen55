package com.spring.springGreen55.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

//@SuppressWarnings("unused")
@Service
public class ProjectProvider {

	@Autowired
	JavaMailSender mailSender;
	
	public String mailSend(String toMail, String title, String messageContent) throws MessagingException {
		String content = "";
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		
		messageHelper.setTo(toMail);
		messageHelper.setSubject(title);
		messageHelper.setText(content);
		
		content = content.replace("\n", "<br>");
		content += "<font color='red'><b>" + messageContent + "</b></font>";
		content += "<br><hr><h3>springGreen에서 발송합니다.</h3><hr><br>";
		content += "";
		content += "<p><img src=\"cid:main.jpg\" width='500px'></p>";
		content += "<p>방문하기 : <a href='http://localhost:9090/springGreen55/'>springGreen55</a></p>";
		messageHelper.setText(content, true);
		
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
		FileSystemResource file = new FileSystemResource(request.getSession().getServletContext().getRealPath("/resources/images/main.jpg"));
		messageHelper.addInline("main.jpg", file);
		
		mailSender.send(message);
		
		return "1";
	}
	
	// 지정된 경로로 파일 복사처리
	public void writeFile(MultipartFile fName, String sFileName) throws IOException {
		FileOutputStream fos = new FileOutputStream(sFileName);
		if(fName.getBytes().length != -1) {
			fos.write(fName.getBytes());
		}
		fos.flush();
		fos.close();
	}

	// 지정된 경로의 파일 삭제하기
	public int deleteFile(String filePathName) {
		int res = 0;
		
		File fName = new File(filePathName);
		
		if(fName.exists()) {
			fName.delete();
			res = 1;
		}
		
		return res;
	}

	public void fileCopyCheck(String origFilePath, String copyFilePath) {
		try {
			FileInputStream fis = new FileInputStream(new File(origFilePath));
			FileOutputStream fos = new FileOutputStream(new File(copyFilePath));
			
			byte[] bytes = new byte[2048];
			int cnt = 0;
			while((cnt = fis.read(bytes)) != -1) {
				fos.write(bytes, 0, cnt);
			}
			fos.flush();
			fos.close();
			fis.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
