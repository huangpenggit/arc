package com.arc.util.tem;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 */
public final class DateUtil {
    public static final int SEC_UNIT = 60;
    public static final int SEC_PER_MIN = SEC_UNIT;
    public static final int SEC_PER_HOUR = SEC_UNIT * SEC_PER_MIN;
    public static final int SEC_PER_DAY = 24 * SEC_PER_HOUR;
    public static final int MILLI_PER_SEC = 1000;

    public enum TimeUnit {
        MILLI, SEC, MIN, HOUR, DAY
    }

    /**
     * Private Constructor
     **/
    private DateUtil() {
    }

    /**
     * 日期格式
     **/
    public interface DATE_PATTERN {
        String HHMMSS = "HHmmss";
        String HH_MM_SS = "HH:mm:ss";
        String HH_MM = "HH:mm";
        String YYYYMMDD = "yyyyMMdd";
        String YYYY_MM_DD = "yyyy-MM-dd";
        String YYYYMMDDHHMMSS = "yyyyMMddHHmmss";
        String YYYYMMDDHHMMSSSSS = "yyyyMMddHHmmssSSS";
        String YYYY_MM_DD_HH_MM_SS = "yyyy-MM-dd HH:mm:ss";
    }

    /**
     * 将Date类型转换成String类型
     *
     * @param date Date对象
     * @return 形如:"yyyy-MM-dd HH:mm:ss"
     */
    public static String date2String(Date date) {
        return date2String(date, DATE_PATTERN.YYYY_MM_DD_HH_MM_SS);
    }

    /**
     * 将Date按格式转化成String
     *
     * @param date    Date对象
     * @param pattern 日期类型
     * @return String
     */
    public static String date2String(Date date, String pattern) {
        if (date == null || pattern == null) {
            return null;
        }
        return new SimpleDateFormat(pattern).format(date);
    }

    /**
     * 将String类型转换成Date类型
     *
     * @param date Date对象
     * @return
     */
    public static Date string2Date(String date) {
        SimpleDateFormat format = new SimpleDateFormat(DATE_PATTERN.YYYY_MM_DD_HH_MM_SS);
        try {
            return format.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }

    public static Date string2Date(String date, String pattern) {
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        try {
            return format.parse(date);
        } catch (ParseException e) {
            return null;
        }
    }

    /***
     * 获取时间差额
     * @param startDate
     * @param endDate
     * @param timeUnit 默认millisecond
     * @return
     */
    public static Long diffTimeUnit(Date startDate, Date endDate, TimeUnit timeUnit) {
        Long diffTime = endDate.getTime() - startDate.getTime();

        switch (timeUnit) {
            case MILLI: {
                return diffTime;
            }
            case SEC: {
                return diffTime / DateUtil.MILLI_PER_SEC;
            }
            case MIN: {
                return diffTime / DateUtil.MILLI_PER_SEC / DateUtil.SEC_PER_MIN;
            }
            case HOUR: {
                return diffTime / DateUtil.MILLI_PER_SEC / DateUtil.SEC_PER_HOUR;
            }
            case DAY: {
                return diffTime / DateUtil.MILLI_PER_SEC / DateUtil.SEC_PER_DAY;
            }
            default:
                return diffTime;
        }
    }

    /**
     * 获得当前系统时间
     * 格式：yyyy-MM-dd HH:mm:ss
     *
     * @return
     */
    public static String getCurDate() {
        return date2String(new Date(), "yyyy-MM-dd HH:mm:ss");
    }

    /**
     * 时间比较大小
     */
    public static int compareDate(Date param1, Date param2) {
        if (param1.getTime() > param2.getTime()) {
            return 1;
        }
        if (param1.getTime() < param2.getTime()) {
            return -1;
        }
        return 0;
    }

    /**
     * 判断某一时间是否在一个区间内
     *
     * @param sourceTime 时间区间,半闭合,如[10:00-20:00)
     * @param curTime    需要判断的时间 如10:00
     * @return
     * @throws IllegalArgumentException
     */
    public static boolean isInTime(String sourceTime, String curTime) {
        if (sourceTime == null || !sourceTime.contains("-") || !sourceTime.contains(":")) {
            throw new IllegalArgumentException("Illegal Argument arg:" + sourceTime);
        }
        if (curTime == null || !curTime.contains(":")) {
            throw new IllegalArgumentException("Illegal Argument arg:" + curTime);
        }
        String[] args = sourceTime.split("-");
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        try {
            long now = sdf.parse(curTime).getTime();
            long start = sdf.parse(args[0]).getTime();
            long end = sdf.parse(args[1]).getTime();
            if (args[1].equals("00:00")) {
                args[1] = "24:00";
            }
            if (end < start) {
                if (now >= end && now < start) {
                    return false;
                } else {
                    return true;
                }
            } else {
                if (now >= start && now < end) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (ParseException e) {
            e.printStackTrace();
            throw new IllegalArgumentException("Illegal Argument arg:" + sourceTime);
        }

    }

    public static String secToTime(int time) {
        String timeStr = null;
        int hour = 0;
        int minute = 0;
        if (time <= 0)
            return "00:00";
        else {
            hour = time / 60;
            if (hour > 99)
                return "99:59:59";
            minute = time - hour * 60;
            timeStr = unitFormat(hour) + ":" + unitFormat(minute);
        }
        return timeStr;
    }

    public static String unitFormat(int i) {
        String retStr = null;
        if (i >= 0 && i < 10)
            retStr = "0" + Integer.toString(i);
        else
            retStr = "" + i;
        return retStr;
    }

    public static String getTimeByHour(int hour) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.HOUR_OF_DAY, calendar.get(Calendar.HOUR_OF_DAY) + hour);
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(calendar.getTime());
    }

    /**
     * 给时间加上几个小时
     *
     * @param day  当前时间 格式：yyyy-MM-dd HH:mm:ss
     * @param hour 需要加的时间
     * @return
     */
    public static String addDateMinut(String day, int hour) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.HOUR, hour);// 24小时制
        date = cal.getTime();
        cal = null;
        return format.format(date);

    }
//	public static void main(String[] args) throws ParseException {
//		Date startDate=DateUtil.string2Date("11:59:00", DATE_PATTERN.HH_MM_SS);
//		Date endDate=DateUtil.string2Date("12:00:01", DATE_PATTERN.HH_MM_SS);
//		System.out.println(DateUtil.SEC_PER_DAY/DateUtil.SEC_UNIT);
//		int times = (DateUtil.diffTimeUnit(startDate,endDate, TimeUnit.SEC)).intValue();
//		System.out.println(times);
//		startDate= org.apache.commons.lang3.time.DateUtils.addMinutes(startDate, 10);
//		System.out.println(DateUtil.date2String(startDate));
//		System.out.println(getExtraTime("00:23","12:00","HH:MM"));
//		System.out.println(isInTime("00:00-11:00", "10:59"));
//	    System.out.println(isInTime("12:00-17:00", "00:00"));
//	    System.out.println(isInTime("18:00-23:59", "03:00"));
//	    System.out.println();
//	    System.out.println(isInTime("0:00-11:00", "03:00"));
//	    System.out.println(isInTime("12:00-17:00", "22:00"));
//	    System.out.println(isInTime("18:00-23:59", "18:00"));
//	    System.out.println(isInTime("0:00-11:00", "20:01"));
//	    System.out.println(isInTime("18:00-23:59", "19:59"));
    //System.out.println(getTimeByHour(2));
//	}




    /**
     * 获取指定时间内的那一天的 第一秒
     */
    public static Date getBeginDate(Date now) {
        Calendar c = Calendar.getInstance();
        c.setTime(now);
        c.set(Calendar.HOUR_OF_DAY, 00);
        c.set(Calendar.MINUTE, 00);
        c.set(Calendar.SECOND, 00);
        return c.getTime();
    }

    /**
     * 获取指定时间内的那一天的 最后一秒
     */
    public static Date getEndDate(Date now) {
        Calendar c = Calendar.getInstance();
        c.setTime(now);
        c.set(Calendar.HOUR_OF_DAY, 23);
        c.set(Calendar.MINUTE, 59);
        c.set(Calendar.SECOND, 59);
        return c.getTime();
    }


    /**
     * 两个时间的间隔秒
     */
    public static int getBetweenTime(Date one, Date other) {
        return (int) (Math.abs(one.getTime() - other.getTime()) / 1000);
    }

    //生成流水号
    public String getSerialNumber() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String format = formatter.format(new Date());
        long tem = (long) (Math.random() * 1000000);//6位随机数
        return format += tem;
    }


//    public static void main(String[] args) throws ParseException {
//
//        System.out.println("**********************************************");
//        System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2017-02-02 06:30:00").toLocaleString());
//        System.out.println(DateUtil.getBeginDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2017-02-02 06:30:00")).toLocaleString());
//        System.out.println(DateUtil.getEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2017-02-02 06:30:00")).toLocaleString());
//        System.out.println("**********************************************");
//
//        Calendar calendar = Calendar.getInstance();
//        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String mark = "2017-02-02 06:30:00";
//        Date formatterDate = formatter.parse(mark);
//        calendar.setTime(formatterDate);
//        calendar.set(Calendar.HOUR_OF_DAY, 0);
//        calendar.set(Calendar.MINUTE, 0);
//        calendar.set(Calendar.SECOND, 0);
//
//        Date start = calendar.getTime();
//
//        calendar.add(Calendar.DAY_OF_MONTH, 1);
//        calendar.add(Calendar.SECOND, -1);
//
//        Date end = calendar.getTime();
//
//        System.out.println(start.toLocaleString());
//        System.out.println(end.toLocaleString());
//
//
//
//        /* other way */
//        SimpleDateFormat formater = new SimpleDateFormat("yyyy/MM/dd");
//        SimpleDateFormat formater2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//
//        start = formater2.parse(formater.format(new Date()) + " 00:00:00");
//        end = formater2.parse(formater.format(new Date()) + " 23:59:59");
//
//        System.out.println(start);
//        System.out.println(end);
//    }
}
