package com.springmvc.controller.com.springmvc.file;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

public class FileUploadUtility {

	private static final String ABS_PATH = "D:\\spring\\springmvc\\src\\main\\webapp\\WEB-INF\\resource\\assets\\images\\avatars\\";
	private static String REAL_PATH = "";


	public static void uploadFile(HttpServletRequest request, MultipartFile file, long code) {

		REAL_PATH = request.getSession().getServletContext().getRealPath("/WEB-INF/resource/assets/images/avatars/");
		System.out.println(REAL_PATH);
		if (!new File(ABS_PATH).exists()) {
			new File(ABS_PATH).mkdirs();
		}
		try {
			file.transferTo(new File(REAL_PATH + code + ".jpg"));
			file.transferTo(new File(ABS_PATH + code + ".jpg"));
		} catch (Exception e) {

		}
	}

}
