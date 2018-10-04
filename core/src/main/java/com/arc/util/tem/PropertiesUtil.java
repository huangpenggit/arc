//package com.arc.util.tem;
//
//import lombok.extern.slf4j.Slf4j;
//
//import java.util.MissingResourceException;
//import java.util.ResourceBundle;
//
//
///**
// * Parsing The Configuration SystemFile
// */
//@Slf4j
//public final class PropertiesUtil {
//		private static final String BUNDLE_NAME = "config/system";
//		private static final ResourceBundle RESOURCE_BUNDLE = ResourceBundle
//				.getBundle(BUNDLE_NAME);
//
//		private PropertiesUtil() {
//		}
//
//		/**
//		 * 根据key获取值，key不存在则返回null
//		 *
//		 * @param key
//		 * @return
//		 */
//		public static String getString(String key) {
//			try {
//				return RESOURCE_BUNDLE.getString(key);
//			} catch (MissingResourceException e) {
//				logger.info("PropertiesUtil-getString", e);
//				return null;
//			}
//		}
//
//		/**
//		 * 根据key获取倿
//		 *
//		 * @param key
//		 * @return
//		 */
//		public static int getInt(String key) {
//			return Integer.parseInt(getString(key));
//		}
//
//		/**
//		 * 根据key获取解密后的
//		 * @return
//		 */
//		public static String getDecryString(String key){
//			String str = getString(key);
//			String decryStr = "";
//			try {
//				decryStr = new String(EncryptionUtil.decode(
//						EncryptionUtil.hex2byte(str), "asiainfo".getBytes()));
//			} catch (IllegalArgumentException e) {
//				logger.info("PropertiesUtil-getDecryString-IllegalArgumentException", e);
//				e.printStackTrace();
//			} catch (Exception e) {
//				logger.info("PropertiesUtil-getDecryString-Exception", e);
//				e.printStackTrace();
//			}
//			return decryStr;
//		}
//
//}
