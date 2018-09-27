//package com.arc.util.tem;
//
//import com.fasterxml.jackson.annotation.JsonInclude;
//import com.fasterxml.jackson.core.JsonProcessingException;
//import com.fasterxml.jackson.core.type.TypeReference;
//import com.fasterxml.jackson.databind.DeserializationFeature;
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//import java.io.IOException;
//
//
//public class JsonHelper {
//
//    private Logger logger = LoggerFactory.getLogger(this.getClass());
//    ObjectMapper mapper;
//
//    public JsonHelper() {
//        mapper = new ObjectMapper();
//        mapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
//        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
//    }
//
//    public JsonHelper(JsonInclude.Include include) {
//        mapper = new ObjectMapper();
//        mapper.setSerializationInclusion(include);
//        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
//    }
//
//
//    public String toJson(Object object) throws JsonProcessingException {
//        return mapper.writeValueAsString(object);
//    }
//
//    public <T> T fromJson(String json, Class<T> cls) throws IOException {
//        return mapper.readValue(json, cls);
//    }
//
//    public <T> T fromJson(String json, TypeReference valueTypeRef) throws IOException {
//        return mapper.readValue(json, valueTypeRef);
//    }
//}
