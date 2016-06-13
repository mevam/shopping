package com.d7.shopping.utils;

import java.security.MessageDigest;
import java.util.UUID;

import org.apache.tomcat.util.codec.binary.Base64;

public class DataUtil {
	
	public static String md5(String str){
		try {
			//将str利用md5处理，处理结果是byte[]
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] input = str.getBytes();
			byte[] output = md.digest(input);
			//System.out.println(output.length);
			//利用Base64算法将byte[]处理成字符串返回
			return Base64.encodeBase64String(output);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
		
	}
	
	/*public static void main(String[] args) {
		System.out.println(md5("1234"));
		System.out.println(md5("qxSDNZcRy0rJ7s9iBPjPUQ=="));
	}*/
	
	public static String createId(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	
	
	
}
