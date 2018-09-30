package com.mybatis.generator;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@SuppressWarnings("all")
public class JacksonUtils {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = LoggerFactory.getLogger(JacksonUtils.class);

	public static final ObjectMapper mapper;

	public static final String EMPTY_JSON_STRING = "{}";

	static {
		mapper = new ObjectMapper();
	}

	/**
	 *
	 * @param obj
	 * @return
	 */
	public static String toJson(Object obj) {
		return toJson(obj, false);
	}

	/**
	 *
	 * @param obj
	 * @param isPretty
	 * @return
	 */
	public static String toJson(Object obj, boolean isPretty) {
		try {
			if (!isPretty) {
				return mapper.writeValueAsString(obj);
			}
			return mapper.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
		} catch (JsonProcessingException e) {
			logger.error(e.getMessage(), e);
		}
		return "";
	}

	/**
	 *
	 * @param json
	 * @param requiredType
	 * @return
	 */
	public static <T> T toObject(String json, Class<T> requiredType) {
		if (json == null || "".equals(json)) {
			return null;
		}

		if (requiredType == null) {
			throw new IllegalArgumentException("Required type can not be null. ");
		}

		try {
			return mapper.readValue(json, requiredType);
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return null;
	}

	public static <K, V> Map<K, V> toMap(String json, Class<K> k, Class<V> v) {
		if (json == null || "".equals(json)) {
			return null;
		}

		if (k == null || v == null) {
			throw new IllegalArgumentException("Required classes can not be null. ");
		}

		try {
			return mapper.readValue(json, getJavaType(Map.class, Map.class, k, v));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return Collections.emptyMap();
	}

	public static <T> List<T> toList(String json, Class<T> cls) {
		if (json == null || "".equals(json)) {
			return null;
		}

		if (cls == null) {
			throw new IllegalArgumentException("Required class can not be null. ");
		}

		try {
			return mapper.readValue(json, getJavaType(List.class, List.class, cls));
		} catch (IOException e) {
			logger.error(e.getMessage(), e);
		}
		return Collections.emptyList();
	}

	private static JavaType getJavaType(Class<?> collectionClass, Class<?> parametersFor, Class<?>... elementClasses) {
		return mapper.getTypeFactory().constructParametrizedType(collectionClass, parametersFor, elementClasses);
	}



}
