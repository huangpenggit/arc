package com.arc.util.tem;

import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;


/**
 * 对称加解密工具类
 *
 * @author dengqianyong
 *
 */
public class AESUtils {

	// 编码方式
	public static final String charset = "UTF-8";

	/**
	 * 加密
	 *
	 * @param cleartext
	 * @return
	 */
	public static String encrypt(String source, String key) {
		try {
			key = MD5Utils.encrypt16(key);
			IvParameterSpec zeroIv = new IvParameterSpec(key.getBytes(charset));
			SecretKeySpec sks = new SecretKeySpec(key.getBytes(charset), "AES");
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, sks, zeroIv);
			byte[] encryptedData = cipher.doFinal(source.getBytes(charset));
			return Base64.getEncoder().encodeToString(encryptedData);
		} catch (Exception e) {
			return "";
		}
	}

	/**
	 * 解密
	 *
	 * @param encrypted
	 * @return
	 */
	public static String decrypt(String encrypted, String key) {
		try {
			key = MD5Utils.encrypt16(key);
			byte[] byteMi = Base64.getDecoder().decode(encrypted);
			IvParameterSpec zeroIv = new IvParameterSpec(key.getBytes(charset));
			SecretKeySpec sks = new SecretKeySpec(key.getBytes(), "AES");
			Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, sks, zeroIv);
			byte[] decryptedData = cipher.doFinal(byteMi);
			return new String(decryptedData, charset);
		} catch (Exception e) {
			return "";
		}
	}

	/**
	 * 测试
	 *
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		String content = "{\"id\":10000001,\"targetNumber\":\"15921410891\",\"content\":\"hello world\",\"soucreUuid\":\"abcdefg\"}";
		System.out.println("加密前：" + content);

		String encryptResult = encrypt(content, "123456");
		System.out.println("加密后：" + new String(encryptResult));

		String decryptResult = decrypt(encryptResult, "123456");
		System.out.println("解密后：" + new String(decryptResult));
	}
}
