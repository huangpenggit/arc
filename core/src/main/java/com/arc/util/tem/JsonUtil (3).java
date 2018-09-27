//package com.arc.util.tem;
//
//import java.io.PrintWriter;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletResponse;
//
//
///**
// *
// * @desc JsonUtil 负责JSON与JAVA类型之间的相互转换,fastjson版
// * @author jingzhanjun
// * @email 925102515@qq.com
// * @edit on 2017-10-18
// *
// */
//public class JsonUtil {
//	private static JsonUtil instance;
//	private JsonUtil(){}
//
//	public static JsonUtil getInstance(){
//		if(instance==null){
//			synchronized(JsonUtil.class){
//				if(instance==null){
//					instance=new JsonUtil();
//				}
//			}
//		}
//		return instance;
//	}
//
//	/**
//	 * 将JAVA类型Object转换成JSON字符串
//	 * @param object 即任意JAVA类型，如JavaBean、Collection、Map等,Note:if relation,only setter at manage side to escape cycle
//	 * @return 目标JSON字符串
//	 */
//	public static String toJson(Object object){
//		String json=JSON.toJSONString(object);
//		return json;
//	}
//
//	/**
//	 * 将JSON字符串转换成Object对象
//	 * @param json 需要转换的JSON字符串
//	 * @param clazz Object对象类型
//	 * @return 目标Object对象
//	 */
//	public static Object toObject(String json, Class<?> clazz){
//		return (Object) JSON.parseObject(json, clazz);
//	}
//
//	/**
//	 * 将JSON字符串转换成Object对象
//	 * @param json 需要转换的JSON字符串
//	 * @param clazz 目标List对象类型
//	 * @return 目标List对象
//	 */
//	public static Object toList(String json, Class<List<?>> clazz){
//		return (Object) JSON.parseArray(json, clazz);
//	}
//
//	/**
//	 * 将JSON字符串转换成List<Map<String,Object>>对象
//	 * @param json 需要转换的JSON字符串
//	 * @param clazz 目标List<Map<String,Object>>对象类型
//	 * @return 目标List<Map<String,Object>>对象
//	 */
//	public static Object toListMap(String json, Class<List<Map<String,Object>>> clazz){
//		return (Object) JSON.parseObject(json, new TypeReference<List<Map<String,Object>>>(){});
//	}
//
//	public static void main(String[] args) {
//
//	}
//
//	public static Map<String, Object> createResultMsg() {
//		Map<String, Object> resultMsg=new HashMap<String, Object>();
//		resultMsg.put("code", "1");
//		resultMsg.put("msg", "操作成功");
//		resultMsg.put("transport", null);
//		resultMsg.put("rows", null);
//		resultMsg.put("total", null);
//		return resultMsg;
//	}
//
//	public static void writeToJson(HttpServletResponse response, String json) {
//		try {
//			response.setContentType("application/json; charset=UTF-8");
//			PrintWriter out =response.getWriter();
//			out.write(json);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
//
//}
