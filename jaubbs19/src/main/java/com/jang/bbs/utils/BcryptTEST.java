package com.jang.bbs.utils;

public class BcryptTEST {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String pass = "hello"; 
		System.out.println("그냥 문자열 : "+pass); 
		
		String hashPass = BCrypt.hashpw(pass, BCrypt.gensalt(12)); 
		System.out.println("암호화된 String : "+hashPass); 
		
		String pass2= "hello2"; 
		System.out.println("패스워드 비교결과(동일): "+BCrypt.checkpw(pass, hashPass)); 
		System.out.println("패스워드 비교결과(다름): "+BCrypt.checkpw(pass2, hashPass));
	}
}
