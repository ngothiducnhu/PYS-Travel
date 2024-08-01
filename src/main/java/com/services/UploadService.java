package com.services;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

@SessionScope
@Service
public class UploadService {
	@Autowired
	ServletContext app;
	@Autowired
	HttpServletRequest req;
	@Autowired
	ServletContext servletContext;

//	public File save(MultipartFile file,String folder, String fileName) {
//		File dir = new File(req.getServletContext().getRealPath(folder));
//		if (!dir.exists())  
//			dir.mkdir();
//		try {
//			File saveFile = new File(dir,file);
//			file.transferTo(saveFile);
//			return saveFile;
//		} catch (Exception e) {
//			throw new RuntimeException(e);
//		}
//	}

	public void uploadFile(MultipartFile file, String folder, String filename) {
		String uploadDir = getClass().getClassLoader().getResource("").getPath().replace("/target/classes/",
				"/src/main/webapp").replaceFirst("/", "");
		Path uploadPath = Paths.get(uploadDir, folder.replaceFirst("/", ""));
		

		try {
			if (!Files.exists(uploadPath)) {
				Files.createDirectories(uploadPath);
			}

			Path path = Paths.get(uploadPath.toString(), filename);

			if (Files.exists(path)) {
				Files.delete(path);
			}

			Files.write(path, file.getBytes());
		} catch (Exception e) {
		}
	}

}
