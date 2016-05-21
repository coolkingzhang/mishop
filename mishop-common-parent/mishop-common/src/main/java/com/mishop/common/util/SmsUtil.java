package com.mishop.common.util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
/**
 * 【短信发送工具类】
 * 
 * -->当前启用的是：创蓝集团短信接口
 * -->公共调用方法：send()
 * 
 * @author Moshow
 **/
public class SmsUtil {

	static String account="gzxr168";//账号
	static String pswd="Gzxr123456";//密码
	static String mobile="";//手机号
	static String msg="";//内容
	static String needstatus="true";//状态报告
	//http://222.73.117.158/msg/HttpSendSM?&msg=12333&account=&pswd=&mobile=&needstatus=true
	/**
	 * 【创蓝文化传播】短信接口调用方法
	 * 发送短信
	 * @author Moshow
	 **/
	public static String sendMsg(String msg, String mobile) throws Exception {
		try{
			StringBuffer sb = new StringBuffer(
					"http://222.73.117.158/msg/HttpSendSM?");
			sb.append("&msg=" + URLEncoder.encode(msg, "utf-8"));
			sb.append("&account=" + account);
			sb.append("&pswd=" + pswd);
			sb.append("&mobile=" + mobile);
			sb.append("&needstatus=" + needstatus);
			System.out.println(sb);
			URL url = new URL(sb.toString());
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			BufferedReader in = new BufferedReader(new InputStreamReader(
					url.openStream()));
			System.out.println(in.readLine());
			return in.readLine();
		}catch (Exception e){
			return null;
		}
	}
	/**
	 * 【创蓝文化传播】短信接口调用方法
	 * 查询额度
	 * @author Moshow
	 **/
	public static String sendQuery() throws Exception {
		try{
			StringBuffer sb = new StringBuffer(
					"http://222.73.117.158/msg/QueryBalance?");
			sb.append("&account=" + account);
			sb.append("&pswd=" + pswd);
			System.out.println(sb);
			URL url = new URL(sb.toString());
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			BufferedReader in = new BufferedReader(new InputStreamReader(
					url.openStream()));
			System.out.println(in.readLine());
			return in.readLine();
		}catch (Exception e){
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * -->公共调用方法：send(msg,mobile);
	 * 以后统一调用这个方法
	 * @author Moshow
	 **/
	public static String send(String msg, String mobile) throws Exception {
		return sendMsg(msg,mobile);
	}

}