package com.jang.bbs.utils;

import java.io.UnsupportedEncodingException;

public class AESTest {

	public static void main(String[] args) throws Exception {
		
        String key = "jangan-1182-sam!!";       // key는 16자 이상
        AES256Util aes256 = new AES256Util(key);
         
        String text = "1234";
        String encText = aes256.aesEncode(text);
        String decText = aes256.aesDecode(encText);
         
        System.out.println("암호화할 문자 : " + text);
        System.out.println("암호화된 문자 : " + encText);
        System.out.println("복호화된 문자 : " + decText);
    }
}
