package com.mishop.common.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;


public class DateUtil {
	
//	/**
//     * 获取相差时间
//     * 
//     * @param date1 起始时间
//     * @param date2 结束时间
//     * @param type :0-秒数,1-分钟数,2-小时数,3-天数
//     * @return
//     */
//    public static long getDiffValue(Long date1, Long date2, Integer type) {
//        long diff = date2 - date1;
//        long seconds = diff / 1000;
//        if (type == GlobalConstants.DIFF_TIME_VALUE_SECONDS)
//            return seconds;
//        long mins = seconds / 60;
//        if (type == GlobalConstants.DIFF_TIME_VALUE_MINUTES) {
//            return mins;
//        }
//        long hours = mins / 60;
//        if (type == GlobalConstants.DIFF_TIME_VALUE_HOURS) {
//            return hours;
//        }
//        long days = hours / 24;
//        if (type == GlobalConstants.DIFF_TIME_VALUE_DAYS) {
//            return days;
//        }
//        return 0L;
//    }
    
    /**
     * long转换成Date类型
     * 
     * @param longDate
     * @return
     */
    public static Date Long2Date(Long longDate) {
        return new Date(longDate); //new SimpleDateFormat("yyyy/MM/dd HH:mm").format(longDate);
    }
    
    public static Long Date2Long(Date date){
    	return date.getTime();
    }
    
    public static String DateToStr(Date date,String format){
    	return new SimpleDateFormat(format).format(date);
    }
    public static void main(String[] args) {
		System.out.println();
	}
    
//    /**
//     * 获取时间年份/月份/月份中天数/小时
//     * @param type :5-年份,4-月份,3--每月中的天数,2-小时
//     * @return
//     */
//    public static int getDateByType(int type, Long date) {
//        Calendar c = Calendar.getInstance();
//        c.setTimeInMillis(date);
//        if (type == GlobalConstants.DIFF_TIME_VALUE_YEAR) {
//            return c.get(Calendar.YEAR);
//        } else if (type == GlobalConstants.DIFF_TIME_VALUE_MONTH) {
//            return c.get(Calendar.MONTH);
//        } else if (type == GlobalConstants.DIFF_TIME_VALUE_DAYS) {
//            return c.get(Calendar.DAY_OF_MONTH);
//        } else if (type == GlobalConstants.DIFF_TIME_VALUE_HOURS) {
//            return c.get(Calendar.DATE);
//        }
//        return 0;
//    }
//    
//    /**
//     * 时间比较, 用于比较一天以内的时间,一个月以内的时间,或者一年以内的时间
//     * 
//     * @param year 用于设置比较时间范围
//     * @param month: 0-JANUARY 用于设置比较时间范围
//     * @param date 用于设置比较时间范围
//     * @param compareTime 用于比较时间
//     * @param type 时间比较 天内,月内, 年内
//     * @return
//     */
//    public static boolean dateCompare(int year, int month, int day, Long compareTime, int type) {
//        Calendar c1 = Calendar.getInstance();
//        c1.set(year, month, 1, 0, 0, 0);
//        Calendar c2 = Calendar.getInstance();
//        if (type == GlobalConstants.DIFF_TIME_VALUE_YEAR) {
//            c2.set(year - 1, month - 1, day);
//            c2.add(Calendar.DAY_OF_MONTH, -1);
//            c2.set(Calendar.HOUR_OF_DAY, 23);
//            c2.set(Calendar.MINUTE, 59);
//            c2.set(Calendar.SECOND, 59);
//        } else if (type == GlobalConstants.DIFF_TIME_VALUE_MONTH) {
//            c2.set(year, month - 1, 1);
//            c2.add(Calendar.DAY_OF_MONTH, -1);
//            c2.set(Calendar.HOUR_OF_DAY, 23);
//            c2.set(Calendar.MINUTE, 59);
//            c2.set(Calendar.SECOND, 59);
//        } else if (type == GlobalConstants.DIFF_TIME_VALUE_DAYS) {
//            c1.set(year, month, day, 23, 59, 59);
//            c2.set(year, month, day, 0, 0, 0);
//        }
//        return compareTime < c1.getTimeInMillis() && compareTime > c2.getTimeInMillis();
//    }
//    
	/**
	 * 获得当天日期
	 * 
	 * @return
	 */
	public static String getCurrentDateStr(String splitStr) {
		String curDateStr = "";
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		curDateStr = String.valueOf(year) + splitStr;
		curDateStr += ((month < 10) ? "0" + String.valueOf(month) : String
				.valueOf(month)) + splitStr;
		curDateStr += ((day < 10) ? "0" + String.valueOf(day) : String
				.valueOf(day));
		return curDateStr;
	}

	public static String getCurrentDateStr(long millis) {
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(millis);
		@SuppressWarnings("resource")
		Formatter ft = new Formatter(Locale.CHINA);// %1$tY年%1$tm月%1$td日%1$tA，%1$tT
													// %1$tp
		return ft.format("yyyy-MM-dd HH:mm:ss.SSS", cal).toString();
	}

	@SuppressWarnings("resource")
	public static String getCurrentDateStr(long millis, String format) {
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(millis);
		Formatter ft = new Formatter(Locale.CHINA);// %1$tY年%1$tm月%1$td日%1$tA，%1$tT
													// %1$tp
		return ft.format(format, cal).toString();
	}

	/**
	 * 获取当前月份
	 * 
	 * @param splitStr
	 * @return
	 */
	public static String getCurrentYearMonthStr(String splitStr) {
		String curDateStr = "";
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		curDateStr = String.valueOf(year) + splitStr;
		curDateStr += ((month < 10) ? "0" + String.valueOf(month) : String
				.valueOf(month)) + splitStr;
		return curDateStr;
	}

	/**
	 * 获得当前年份
	 * 
	 * @return yyyy
	 */
	public static int getCurrentYear() {
		return Calendar.getInstance().get(Calendar.YEAR);
	}

	/**
	 * 获取当前月份
	 * 
	 * @return
	 */
	public static int getCurrentMonth() {
		return Calendar.getInstance().get(Calendar.MONTH) + 1;
	}

	/**
	 * 获取当前日
	 * 
	 * @return
	 */
	public static int getCurrentDay() {
		return Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
	}
	
	public static int getCurrentHour() {
		return Calendar.getInstance().get(Calendar.HOUR);
	}
	
	public static int getCurrentMinute() {
		return Calendar.getInstance().get(Calendar.MINUTE);
	}
	
	public static int getCurrentSecond() {
		return Calendar.getInstance().get(Calendar.SECOND);
	}

	/**
	 * 判断是否闰月，用于计算当前时间加上分钟后的时间
	 * 
	 * @param year
	 *            年份
	 * @return
	 */
	public static boolean isLeapYear(int year) {
		// 能被100整除, 不能被400整除的年份, 不是闰年.
		// 能被100整除, 也能被400整除的年份, 是闰年.
		if ((year % 100) == 0) {
			return ((year % 400) == 0);
		} else // 不能被100整除, 能被4整除的年份是闰年.
		{
			return ((year % 4) == 0);
		}
	}

}
