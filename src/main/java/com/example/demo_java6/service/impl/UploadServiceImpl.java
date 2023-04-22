//package com.example.demo_java6.service.impl;
//
//import java.io.File;
//import java.nio.file.Paths;
//
//import javax.servlet.ServletContext;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.example.demo_java6.service.UploadService;
//
//@Service
//public class UploadServiceImpl implements UploadService{
//	
//	@Autowired
//	private ServletContext app;
//
//	@Override
//	public File save(MultipartFile file, String folder) {
//		File dir = Paths.get(app.getRealPath(""), folder).toFile();
////		File dir = new File("/images/" + folder);
//		System.out.println("dir: "+dir);
//		if(!dir.exists()) {
//			dir.mkdirs();
//		}
//		String name = System.currentTimeMillis() + file.getOriginalFilename();
//		String filename = Integer.toHexString(name.hashCode()) + name.substring(name.lastIndexOf("."));
//		try {
//			File saveFile = new File(dir, filename);
//			file.transferTo(saveFile);
//			System.out.println(saveFile.getAbsolutePath());
//			return saveFile;
//		} catch (Exception e) {
//			throw new RuntimeException(e);
//		}
//	}
//	
//}
