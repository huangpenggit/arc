package com.arc.util.tem;

import java.lang.reflect.Modifier;

/**
 * Utility for modifier
 *
 * @author Qianyong,Deng
 * @since Oct 8, 2012
 *
 */
public final class ModifierUtils {
    public ModifierUtils() {
    }

    /**
	 * Return <tt>true</tt> if the integer argument includes the <tt>public</tt>
	 * modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>public</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isPublic(int mod) {
		return Modifier.isPublic(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>private</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>private</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isPrivate(int mod) {
		return Modifier.isPrivate(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>protected</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>protected</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isProtected(int mod) {
		return Modifier.isProtected(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the <tt>static</tt>
	 * modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>static</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isStatic(int mod) {
		return Modifier.isStatic(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the <tt>final</tt>
	 * modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>final</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isFinal(int mod) {
		return Modifier.isFinal(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>synchronized</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the
	 *         <tt>synchronized</tt> modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isSynchronized(int mod) {
		return Modifier.isSynchronized(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>volatile</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>volatile</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isVolatile(int mod) {
		return Modifier.isVolatile(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>transient</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>transient</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isTransient(int mod) {
		return Modifier.isTransient(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the <tt>native</tt>
	 * modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>native</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isNative(int mod) {
		return Modifier.isNative(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>interface</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>interface</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isInterface(int mod) {
		return Modifier.isInterface(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>abstract</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>abstract</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isAbstract(int mod) {
		return Modifier.isAbstract(mod);
	}

	/**
	 * Return <tt>true</tt> if the integer argument includes the
	 * <tt>strictfp</tt> modifier, <tt>false</tt> otherwise.
	 *
	 * @param mod
	 * @return <tt>true</tt> if <code>mod</code> includes the <tt>strictfp</tt>
	 *         modifier; <tt>false</tt> otherwise.
	 */
	public static boolean isStrict(int mod) {
		return Modifier.isStrict(mod);
	}
}
