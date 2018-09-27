package com.arc.util.tem;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * Utility for spring application context.
 *
 * @author Besttone
 */
@Component
@SuppressWarnings("unchecked")
@Slf4j
public final class SpringContextUtils implements ApplicationContextAware {

    private static ApplicationContext context;

    private SpringContextUtils() {
    }

    /**
     * Get Bean
     *
     * @param requiredType
     * @return
     * @see {@link ApplicationContext#getBean(Class)}
     */
    public static <T> T getBean(Class<T> requiredType) {
        try {
            return context.getBean(requiredType);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    /**
     * Get Bean
     *
     * @param name
     * @param requiredType
     * @return
     * @see {@link ApplicationContext#getBean(String, Class)}
     */
    public static <T> T getBean(String name, Class<T> requiredType) {
        try {
            return context.getBean(name, requiredType);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    /**
     * Get Bean
     *
     * @param name
     * @return
     * @see {@link ApplicationContext#getBean(String)}
     */
    public static <T> T getBean(String name) {
        try {
            return (T) context.getBean(name);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    /**
     * Get Bean
     *
     * @param name
     * @param args
     * @return
     * @see {@link ApplicationContext#getBean(String, Object...)}
     */
    public static <T> T getBean(String name, Object... args) {
        try {
            return (T) context.getBean(name, args);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
        return null;
    }

    /**
     * Get application context
     *
     * @return
     */
    public static ApplicationContext getApplicationContext() {
        return context;
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        context = applicationContext;
    }

}
