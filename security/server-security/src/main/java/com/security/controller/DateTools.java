package com.security.controller;

import java.time.*;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAdjusters;
import java.util.Calendar;
import java.util.Set;

public class DateTools {


    //https://www.cnblogs.com/Small-music/p/9482261.html

    /**
     * LocalDate、LocalTime、LocalDateTime
     * 
     * from     依据传入的 Temporal 对象创建对象实例
     * now      依据系统时钟创建 Temporal 对象
     * of       由 Temporal 对象的某个部分创建该对象的实例
     * parse    由字符串创建 Temporal 对象的实例
     * atOffset 将 Temporal 对象和某个时区偏移相结合
     * atZone   将 Temporal 对象和某个时区相结合
     * format   使用某个指定的格式器将Temporal对象转换为字符串（Instant类不提供该方法）
     * get      读取 Temporal 对象的某一部分的值
     * minus    创建 Temporal 对象的一个副本，通过将当前 Temporal 对象的值减去一定的时长创建该副本
     * plus     创建 Temporal 对象的一个副本，通过将当前 Temporal 对象的值加上一定的时长创建该副本
     * with     以该 Temporal 对象为模板，对某些状态进行修改创建该对象的副本
     */

    public void test1() {
        // 获取时间
        LocalDateTime ldt = LocalDateTime.now();
        System.out.println(ldt);
        System.out.println(ldt.getYear());
        System.out.println(ldt.getMonthValue());
        System.out.println(ldt.getDayOfMonth());
        System.out.println(ldt.getHour());
        System.out.println(ldt.getMinute());
        System.out.println(ldt.getSecond());

        // 指定时间
        LocalDateTime ldt2 = LocalDateTime.of(2020, 1, 2, 8, 10, 0);
        System.out.println(ldt2);

        // 加上时间
        LocalDateTime ldt3 = ldt2.plusYears(20);
        System.out.println(ldt3);

        // 减去时间
        LocalDateTime ldt4 = ldt2.minusMonths(2);
        System.out.println(ldt4);
    }

    /**
     * TemporalAdjuster 时间校正器
     * 
     * TemporalAdjusters工具类方法：
     * dayOfWeekInMonth           创建一个新的日期，它的值为同一个月中每一周的第几天
     * firstDayOfMonth            创建一个新的日期，它的值为当月的第一天
     * firstDayOfNextMonth        创建一个新的日期，它的值为下月的第一天
     * firstDayOfNextYear         创建一个新的日期，它的值为明年的第一天
     * firstDayOfYear             创建一个新的日期，它的值为当年的第一天
     * firstInMonth               创建一个新的日期，它的值为同一个月中，第一个符合星期几要求的值
     * lastDayOfMonth             创建一个新的日期，它的值为当月的最后一天
     * lastDayOfNextMonth         创建一个新的日期，它的值为下月的最后一天
     * lastDayOfNextYear          创建一个新的日期，它的值为明年的最后一天
     * lastDayOfYear              创建一个新的日期，它的值为今年的最后一天
     * lastInMonth                创建一个新的日期，它的值为同一个月中，最后一个符合星期几要求的值
     * next/previous              创建一个新的日期，并将其值设定为日期调整后或者调整前，第一个符合指定星期几要求的日期
     * nextOrSame/previousOrSame  创建一个新的日期，并将其值设定为日期调整后或者调整前，第一个符合指定星期几要求的日期，如果该日期已经符合要求，直接返回该对象
     */
    public void test2() {
        // 获取时间
        LocalDateTime ldt = LocalDateTime.now();
        System.out.println(ldt);

        // 修改时间
        LocalDateTime ldt2 = ldt.withDayOfMonth(10);
        System.out.println(ldt2);

        LocalDateTime ldt3 = ldt.with(TemporalAdjusters.next(DayOfWeek.SUNDAY));
        System.out.println(ldt3);

        // 自定义时间：下一个工作日
        LocalDateTime ldt5 = ldt.with((l) -> {
            LocalDateTime ldt4 = (LocalDateTime) l;

            DayOfWeek dow = ldt4.getDayOfWeek();

            if (dow.equals(DayOfWeek.FRIDAY)) {
                return ldt4.plusDays(3);
            } else if (dow.equals(DayOfWeek.SATURDAY)) {
                return ldt4.plusDays(2);
            } else {
                return ldt4.plusDays(1);
            }
        });
        System.out.println(ldt5);
    }

    /**
     * Instant 时间戳（使用 Unix 元年  1970年1月1日 00:00:00 所经历的毫秒值）
     */
    public void test3() {
        // 默认使用 UTC 时区
        Instant ins1 = Instant.now();
        System.out.println(ins1);

        // 设置时区偏移量
        OffsetDateTime odt = ins1.atOffset(ZoneOffset.ofHours(8));
        System.out.println(odt);

        // 获取秒值
        System.out.println(ins1.getEpochSecond());
        System.out.println(ins1.toEpochMilli());

        // 设置秒值
        Instant ins2 = Instant.ofEpochSecond(5);
        System.out.println(ins2);
    }

    /**
     * Duration 用于计算两个“时间”间隔
     * Period   用于计算两个“日期”间隔
     */

    public void test4() {
        // 计算两个“时间”间隔
        Instant ins1 = Instant.now();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
        }

        Instant ins2 = Instant.now();

        Duration duration = Duration.between(ins1, ins2);
        System.out.println(duration);
        System.out.println(duration.getSeconds());
        System.out.println(duration.toMillis());

        System.out.println("----------------------------------");

        // 计算两个“日期”间隔
        LocalDate ld1 = LocalDate.of(2018, 1, 1);
        LocalDate ld2 = LocalDate.now();

        Period pe = Period.between(ld1, ld2);
        System.out.println(pe.getYears());
        System.out.println(pe.getMonths());
        System.out.println(pe.getDays());
    }

    /**
     * DateTimeFormatter 解析和格式化日期或时间
     */
    public void test5() {
        //DateTimeFormatter dtf = DateTimeFormatter.ISO_DATE;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy年MM月dd日 HH:mm:ss E");

        LocalDateTime ldt = LocalDateTime.now();

        String date = ldt.format(dtf);
        System.out.println(date);

        LocalDateTime ldt2 = ldt.parse(date, dtf);
        System.out.println(ldt2);
    }

    /**
     * 获取所有可用时区
     */
    public void test6() {
        Set<String> set = ZoneId.getAvailableZoneIds();
        set.forEach(System.out::println);
    }

    /**
     * ZonedDate、ZonedTime、ZonedDateTime 带时区的时间或日期
     */
    public void test7() {
        LocalDateTime ldt = LocalDateTime.now(ZoneId.of("Asia/Shanghai"));
        System.out.println(ldt);

        ZonedDateTime zdt = ZonedDateTime.now(ZoneId.of("US/Pacific"));
        System.out.println(zdt);
    }

    public static void main(String[] args) {


        Calendar cal = Calendar.getInstance();
        int week = cal.get(Calendar.DAY_OF_WEEK);
        System.out.println(week);
        System.out.println(week-1);//
        //默认，周日是1。
        LocalDateTime now = LocalDateTime.now();
        System.out.println(now);//2018-09-19T19:32:54.881

        System.out.println(System.currentTimeMillis());
        System.out.println(System.currentTimeMillis());
    }
}
