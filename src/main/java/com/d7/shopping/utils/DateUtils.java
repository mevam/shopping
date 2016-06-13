package com.d7.shopping.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtils {

	/** 带中划线日期时间格式yyyy-MM-dd HH:mm:ss */
	public static final String DATE_TIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
	
	/**
	 * 带中划线日期时间格式yyyy-MM
	 */
	public static final String DATE_MONTH_FORMAT = "yyyy-MM";
	
	/**
	 * 
	 */
	public static final String DATE_FORMAT_DAY = "yyyy-MM-dd";
	
	/**
	 * 
	 */
	public static final String DATE_FORMAT_TIME = "yyyy-MM-dd HH:mm:ss";
	
	

	/**
	 * 获取num天之前的日期
	 * 
	 * @param num num
	 * @return string
	 */
	public static String getBeforeDayDate(int num) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, num);
		return parseDate(cal.getTime());

	}
	
	/**
	 * 获取num天之前的日期
	 * 
	 * @param num num
	 * @return string
	 */
	public static Date getBeforeDate(int num) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, num);
		return cal.getTime();

	}
	
	/**
	 * 获取num天之前的日期
	 * 
	 * @param num num
	 * @return string
	 */
	public static String getBeforeDayDate(int num, String format) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, num);
		return parseDate(cal.getTime(), format);

	}
	
	private static String parseDate(Date date, String format) {
		return parse(date, format);
	}

	/**
	 * 获取指定日期的num天之前的日期
	 * @param date 
	 * @param num num
	 * @return string
	 */
	public static String getBeforeDayDate(Date date, int num) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.add(Calendar.DATE, num);
		return parseDate(cal.getTime());

	}
	
	/**
	 * 获取num月之前的月份
	 * 
	 * @param num num
	 * @return string
	 */
	public static String getBeforeDayMonth(int num) {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, num);
		return parseMonth(cal.getTime());
	}
	
	/**
	 * 根据日期转成日期字符串(到天)
	 * @since 1.0
	 * @param date
	 * @return
	 * @author songxuan
	 * @date：2015年6月16日 上午10:51:08
	 */
	public static String parseDate(Date date) {
		return parse(date, DATE_TIME_FORMAT);
	}
	
	/**
	 * 根据日期转成日期字符串(到月)
	 * @since 1.0
	 * @param date
	 * @return
	 * @author songxuan
	 * @date：2015年6月16日 上午10:51:08
	 */
	public static String parseMonth(Date date) {
		return parse(date, DATE_MONTH_FORMAT);
	}
	
	/**
	 * 根据日期对象转换成日期字符
	 * 
	 * @param date date
	 * @param format String
	 * @return String
	 */
	public static String parse(Date date, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}
}
