package com.arc.util.tem;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.ObjectUtils;

import java.lang.reflect.Field;
import java.util.*;

/**
 * Utility for collection.
 *
 * @author Qianyong, Deng
 * @since Oct 8, 2012
 */
@Slf4j
public final class CollectionUtils {

    private CollectionUtils() {
    }

    /**
     * Return true if the supplied Collection is null or empty. Otherwise, return
     * false.
     *
     * @param collection the Collection to check
     * @return whether the given Collection is empty
     */
    public static boolean isEmpty(Collection<?> collection) {
        return (collection == null || collection.isEmpty());
    }

    /**
     * Return true if the supplied Map is null or empty. Otherwise, return false.
     *
     * @param map the Map to check
     * @return whether the given Map is empty
     */
    public static boolean isEmpty(Map<?, ?> map) {
        return (map == null || map.isEmpty());
    }

    /**
     * Return true if the supplied Collection is not null or not empty. Otherwise,
     * return false.
     *
     * @param collection the Collection to check
     * @return whether the given Collection is not empty
     */
    public static boolean isNotEmpty(Collection<?> collection) {
        return !isEmpty(collection);
    }

    /**
     * Return true if the supplied Map is not null or not empty. Otherwise, return
     * false.
     *
     * @param map the Map to check
     * @return whether the given Map is not empty
     */
    public static boolean isNotEmpty(Map<?, ?> map) {
        return !isEmpty(map);
    }

    /**
     * Convert the supplied array into a List. A primitive array gets converted into
     * a List of the appropriate wrapper type. A null source value will be converted
     * to an empty List.
     *
     * @param source the (potentially primitive) array
     * @return the converted List result
     * @throws IllegalArgumentException if argument is not an array
     */
    @SuppressWarnings("rawtypes")
    public static List toList(Object source) {
        if (!source.getClass().isArray()) {
            throw new IllegalArgumentException("Argument is not an array, can not be converted to List. ");
        }
        return Arrays.asList(ObjectUtils.toObjectArray(source));
    }


    /**
     * 获取利用反射获取类里面的值和名称
     *
     * @param obj
     * @return
     * @throws IllegalAccessException
     */
    public static Map<String, Object> objectToMap(Object obj) throws IllegalAccessException {
        Map<String, Object> map = new HashMap<>();
        Class<?> clazz = obj.getClass();
        log.debug("Class<?> {}", clazz);
        for (Field field : clazz.getDeclaredFields()) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object value = field.get(obj);
            map.put(fieldName, value);
        }
        return map;
    }
}
