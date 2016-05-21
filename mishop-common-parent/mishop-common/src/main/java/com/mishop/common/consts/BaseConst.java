package com.mishop.common.consts;


public class BaseConst {

	public static final String SESSION_INFO_NAME = "sessionInfo";
	
	/**
	 * ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	 * 权限设置有关常亮定义：
	 */
	public static final int DISPLAY_STYLE_NORMAL = 0;
	public static final int DISPLAY_STYLE_MINI = 1;
	
	/**
	 * 状态：0 激活 1 假删除
	 */
	public static final String STATUS_NORMAL = "0"; 
	public static final String STATUS_DELETE = "1";
	
	public static final int PAGE_NO = 1;
	
	public static final String PAGE_SIZE = "10";
	
	public static final String STATUS = "status";
	public static final String SUCCESS = "success";
	public static final String FAILURE = "failure";
	public static final String ERROR_MESSAGE = "errorMessage";
	
	public static final String UNKOWN_EXCEPTION = "unknown exception";
	public static final String GET_EXCEPTION = "query exception,please try again";
	public static final String CREATE_EXCEPTION = "create exception,please try again";
	public static final String UPDATE_EXCEPTION = "update exception,please try again";
	public static final String DELETE_EXCEPTION = "delete exception,please try again";
}
