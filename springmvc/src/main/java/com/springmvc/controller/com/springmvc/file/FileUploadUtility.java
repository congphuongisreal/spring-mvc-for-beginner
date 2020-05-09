package com.springmvc.controller.com.springmvc.file;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FileUploadUtility {

	//change directory
	private static final String ABS_PATH = "C:\\Users\\Admin\\Desktop\\github\\spring-mvc-for-beginner\\springmvc\\src\\main\\webapp\\WEB-INF\\resource\\assets\\images\\avatars";
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

	public static void deleteFile(long code){
		Path path = Paths.get("C:\\Users\\Admin\\Desktop\\github\\spring-mvc-for-beginner\\springmvc\\src\\main\\webapp\\WEB-INF\\resource\\assets\\images\\avatars\\" + code + ".jpg");
		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
