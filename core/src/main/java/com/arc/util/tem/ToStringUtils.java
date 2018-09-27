package com.arc.util.tem;

import lombok.extern.slf4j.Slf4j;
import org.springframework.util.ReflectionUtils;

import java.lang.annotation.*;
import java.lang.reflect.Modifier;

@Slf4j
public final class ToStringUtils {

    /**
     * @param obj
     * @return
     */
    public static String toString(Object obj) {
        if (obj == null)
            throw new IllegalArgumentException("object can not be null. ");

        StringBuilder builder = new StringBuilder();
        builder.append("{").append(obj.getClass()).append("@").append(obj.hashCode()).append("[");

        ReflectionUtils.doWithFields(obj.getClass(),
                field -> {
                    String name = field.getName();
                    try {
                        ReflectionUtils.makeAccessible(field);
                        Object value = field.get(obj);

                        if (value == null)
                            builder.append(name + "=null;");
                        if (value instanceof String)
                            builder.append(name + "=\"" + value.toString() + "\";");
                        //@TODO  DateUtils.formatDate
//                        else if (value instanceof Date)
//                            builder.append(name + "=" + DateUtils.formatDate((Date) value, DateUtils.FORMAT_DATETIME_FULL) + ";");
                        else
                            builder.append(name + "=" + value.toString() + ";");
                    } catch (Exception e) {
                        log.error(e.getMessage());
                    }
                },
                field -> {
                    if (Modifier.isStatic(field.getModifiers())
                            || Modifier.isFinal(field.getModifiers())) return false; // 跳过静态变量以及常量
                    if (field.getName().startsWith("this$")) return false; // 跳过内部类，防止栈溢出

                    return (field.getDeclaredAnnotation(ToStringIgnore.class) != null); // 跳过不打印的字段
                });

        if (builder.lastIndexOf(";") == builder.length() - 1) {
            builder.deleteCharAt(builder.lastIndexOf(";"));
        }
        builder.append("]}");
        return builder.toString();
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    @Documented
    public @interface ToStringIgnore {
        // 该注释用于 忽略toString中的字段输出，例如password字段等
    }

}
