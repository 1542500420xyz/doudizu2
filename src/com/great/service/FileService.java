package com.great.service;

import java.io.File;

import org.springframework.stereotype.Service;

@Service
public class FileService {
	public File buildXlsById(){
	       //do something to find this file
	       File file=new File("D:/testupload//新建文本文档.txt");
	       return file;
	} 
}
