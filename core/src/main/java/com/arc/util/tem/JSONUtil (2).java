package com.arc.util.tem;//package com.rongyi.hla.utils;
//
//import com.fasterxml.jackson.core.JsonParser;
//import com.fasterxml.jackson.databind.DeserializationConfig;
//import com.fasterxml.jackson.databind.JsonNode;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.fasterxml.jackson.databind.SerializationConfig;
//import com.fasterxml.jackson.databind.node.TextNode;
//
//import java.io.IOException;
//import java.text.SimpleDateFormat;
//import java.util.*;
//
///**
// * Http工具类
// */
//public class JSONUtil {
//    public static void main(String[] args)
//    {
//        Object ss = parseJson("{\"datasourceId\":12201,\"dsName\":\"bj\",\"jndiName\":\"\",\"driverClass\":\"oracle.jdbc.OracleDriver\",\"jdbcURL\":\"jdbc:oracle:thin:@10.88.107.250:1521:orcl\",\"userName\":\"devtest\",\"password\":\"devtest\"}");
//
//        String josnString = "{ \"excelName\" : \"组织结构模板.xls\", \"sheet\" : [ { \"entryCode\" : \"epdm_pcOrganizationT\", \"columns\" : [ { \"field\" : \"orgName\", \"title\" : \"机构名称\" }, { \"field\" : \"orgCode\", \"title\" : \"机构代码\" }, { \"field\" : \"canton\", \"title\" : \"行政区名称\" }, { \"field\" : \"cantonCode\", \"title\" : \"行政区代码\" }, { \"field\" : \"mailingAddress\", \"title\" : \"邮递地址\" }, { \"field\" : \"orgId\", \"title\" : \"ORG_ID\" }, { \"field\" : \"orgLevel\", \"title\" : \"级别\" }, { \"field\" : \"parentId\", \"title\" : \"上级机构名称\" } ], \"sheetName\" : \"Sheet1\", \"rows\" : [ { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"9999.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"10000.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"10001.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"10002.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" } ] }, { \"entryCode\" : \"epdm_pcOrganizationT\", \"columns\" : [ { \"field\" : \"orgName\", \"title\" : \"机构名称\" }, { \"field\" : \"orgCode\", \"title\" : \"机构代码\" }, { \"field\" : \"canton\", \"title\" : \"行政区名称\" }, { \"field\" : \"cantonCode\", \"title\" : \"行政区代码\" }, { \"field\" : \"mailingAddress\", \"title\" : \"邮递地址\" }, { \"field\" : \"orgId\", \"title\" : \"ORG_ID\" }, { \"field\" : \"orgLevel\", \"title\" : \"级别\" }, { \"field\" : \"parentId\", \"title\" : \"上级机构名称\" } ], \"sheetName\" : \"Sheet2\", \"rows\" : [ { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"888.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"889.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"890.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" }, { \"\" : \"\", \"orgId\" : \"444.0\", \"parentId\" : \"雍和宫\", \"cantonCode\" : \"7777.0\", \"orgCode\" : \"891.0\", \"canton\" : \"石景山\", \"orgName\" : \"八角\", \"mailingAddress\" : \"102300.0\", \"orgLevel\" : \"中级\" } ] } ] }";
//
//        Object sssw = parseJson(josnString);
//        int rrrr = 0;
//    }
//
//    public static ObjectMapper getObjectMapper() {
//        ObjectMapper om = new ObjectMapper().setAnnotationIntrospector(new JpaLazyIntrospector());
//
//        om.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
//        om.configure(SerializationConfig.Feature.INDENT_OUTPUT, true);
//        om.configure(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS, false);
//        om.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, false);
//        om.configure(DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES, false);
//        om.configure(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS, false);
//        om.configure(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
//        om.configure(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT, true);
//        om.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
//
//        return om;
//    }
//
//    public static String toJsonString(Object object)
//    {
//        try
//        {
//            return getObjectMapper().writeValueAsString(object);
//        } catch (IOException ex) {
//            throw new RuntimeException(ex);
//        }
//    }
//
//    public static void writeJsonString(Object object, Writer writer)
//    {
//        try
//        {
//            getObjectMapper().writeValue(writer, object);
//        } catch (IOException ex) {
//            throw new RuntimeException(ex);
//        }
//    }
//
//    public static Map parseJson(String jsonString)
//    {
//        JsonNode jn = null;
//        try {
//            jn = getObjectMapper().readTree(jsonString);
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
//        return ((Map)JsonNodeToMap(jn));
//    }
//
//    public static Object parseJson2MapOrList(String jsonString)
//    {
//        JsonNode jn = null;
//        try {
//            jn = getObjectMapper().readTree(jsonString);
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
//        return JsonNodeToMap(jn);
//    }
//
//    public static <T> T parseJson(String jsonString, Class<T> classType)
//    {
//        JsonNode jn = null;
//        try {
//            return getObjectMapper().readValue(jsonString, classType);
//        } catch (Exception ex) {
//            ex.printStackTrace(); }
//        return null;
//    }
//
//    public static <T> T parseJson(String jsonString, TypeReference<T> typeReference)
//    {
//        try
//        {
//            return getObjectMapper().readValue(jsonString, typeReference);
//        } catch (Exception ex) {
//            ex.printStackTrace(); }
//        return null;
//    }
//
//    public static <T> T parseJsonT(String jsonString)
//    {
//        try
//        {
//            return getObjectMapper().readValue(jsonString, new TypeReference() { } );
//        }
//        catch (Exception ex) {
//            ex.printStackTrace(); }
//        return null;
//    }
//
//    public static <T> Map bean2Map(Object bean)
//    {
//        try
//        {
//            return ((Map)getObjectMapper().convertValue(bean, Map.class));
//        } catch (Exception ex) {
//            ex.printStackTrace(); }
//        return null;
//    }
//
//    public static <T> T map2Bean(Map map, Class<T> clazz)
//    {
//        try
//        {
//            return getObjectMapper().convertValue(map, clazz);
//        } catch (Exception ex) {
//            ex.printStackTrace(); }
//        return null;
//    }
//
//    public static Object JsonNodeToMap(JsonNode root)
//    {
//        Map map = new LinkedHashMap();
//        if (root == null)
//            return map;
//
//        if (root.isArray()) {
//            List list = new ArrayList();
//            for (Iterator i$ = root.iterator(); i$.hasNext(); ) { JsonNode node = (JsonNode)i$.next();
//                Map nmp = (Map)JsonNodeToMap(node);
//                list.add(nmp);
//            }
//            return list;
//        }
//        Iterator iter = root.getFields();
//        while (iter.hasNext()) {
//            Map.Entry entry = (Map.Entry)iter.next();
//            String key = (String)entry.getKey();
//            JsonNode ele = (JsonNode)entry.getValue();
//            if (ele.isObject())
//                map.put(key, JsonNodeToMap(ele));
//            else if (ele.isTextual())
//                map.put(key, ((TextNode)ele).asText());
//            else if (ele.isArray())
//                map.put(key, JsonNodeToMap(ele));
//            else
//                map.put(key, ele.toString());
//        }
//
//        return map;
//    }
//}
//   /* public static void main(String[] args){
//
//        String str = "{\"0\":\"zhangsan\",\"1\":\"lisi\",\"2\":\"wangwu\",\"3\":\"maliu\"}";
//        //第一种方式
//        Map maps = (Map)JSON.parse(str);
//        System.out.println("这个是用JSON类来解析JSON字符串!!!");
//        for (Object map : maps.entrySet()){
//            System.out.println(((Map.Entry)map).getKey()+"     " + ((Map.Entry)map).getValue());
//        }
//        //第二种方式
//        Map mapTypes = JSON.parseObject(str);
//        System.out.println("这个是用JSON类的parseObject来解析JSON字符串!!!");
//        for (Object obj : mapTypes.keySet()){
//            System.out.println("key为："+obj+"值为："+mapTypes.get(obj));
//        }
//        //第三种方式
//        Map mapType = JSON.parseObject(str,Map.class);
//        System.out.println("这个是用JSON类,指定解析类型，来解析JSON字符串!!!");
//        for (Object obj : mapType.keySet()){
//            System.out.println("key为："+obj+"值为："+mapType.get(obj));
//        }
//        //第四种方式
//        *//**
//     * JSONObject是Map接口的一个实现类
//     *//*
//        Map json = (Map) JSONObject.parse(str);
//        System.out.println("这个是用JSONObject类的parse方法来解析JSON字符串!!!");
//        for (Object map : json.entrySet()){
//            System.out.println(((Map.Entry)map).getKey()+"  "+((Map.Entry)map).getValue());
//        }
//        //第五种方式
//        *//**
//     * JSONObject是Map接口的一个实现类
//     *//*
//        JSONObject jsonObject = JSONObject.parseObject(str);
//        System.out.println("这个是用JSONObject的parseObject方法来解析JSON字符串!!!");
//        for (Object map : json.entrySet()){
//            System.out.println(((Map.Entry)map).getKey()+"  "+((Map.Entry)map).getValue());
//        }
//        //第六种方式
//        *//**
//     * JSONObject是Map接口的一个实现类
//     *//*
//        Map mapObj = JSONObject.parseObject(str,Map.class);
//        System.out.println("这个是用JSONObject的parseObject方法并执行返回类型来解析JSON字符串!!!");
//        for (Object map: json.entrySet()){
//            System.out.println(((Map.Entry)map).getKey()+"  "+((Map.Entry)map).getValue());
//        }
//        String strArr = "{{\"0\":\"zhangsan\",\"1\":\"lisi\",\"2\":\"wangwu\",\"3\":\"maliu\"}," +
//                "{\"00\":\"zhangsan\",\"11\":\"lisi\",\"22\":\"wangwu\",\"33\":\"maliu\"}}";
//        // JSONArray.parse()
//        System.out.println(json);
//    }*/
