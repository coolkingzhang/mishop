package com.mishop.common.consts;

/**
 * 
 * @author zhang zhihe<coolkingzhang@163.com>
 * @date 2015年12月14日 下午3:07:13
 */
public interface ErrorCodesConst {

	/**
	 * ===================== 错误代码 =====================
	 */
	/** 网络故障,系统出错 */
	public static final Integer NOMAL = 0;

	/** 网络故障,系统出错 */
	public static final Integer SYS_OR_NET_ERROR = 100001;

	/** 数据库错误 */
	public static final Integer DB_ERROR = 101001;

	/** 不可预知错误 */
	public static final Integer UNKNOWN_ERROR = 102001;

	/** 数据异常，请稍后重试 */
	public static final Integer DB_EXCEPTION = 103001;

	/** 请求参数异常 */
	public static final Integer REQUEST_PARAM_EXCEPTION = 103002;

	/** 响应参数异常 */
	public static final Integer RESPONSE_PARAM_EXCEPTION = 103003;

	/** 内部异常 */
	public static final Integer INTERNAL_EXCEPTION = 1004001;

	/** 内部异常 */
	public static final Integer NO_SUCH_REQUEST_HANDLING_METHOD_EXCEPTION = 1004002;

	/** http请求方法不支持 */
	public static final Integer HTTPREQUEST_METHOD_NOTSUPPORTED_EXCEPTION = 1004003;

	/** http媒体类型不支持 */
	public static final Integer HTTP_MEDIATYPE_NOTSUPPORTED_EXCEPTION = 1004004;

	/** 客户端无法支持的媒体类型 */
	public static final Integer HTTP_MEDIATYPE_NOTACCEPTABLE_EXCEPTION = 1004005;

	/** 缺少请求路径的变量 */
	public static final Integer MISSING_PATH_VARIABL_EEXCEPTION = 1004006;

	/** 缺少必须请求参数 */
	public static final Integer MISSING_SERVLET_REQUEST_PARAMETER_EXCEPTION = 1004007;

	/** 请求参数无法绑定 */
	public static final Integer SERVLETREQUEST_BINDING_EXCEPTION = 1004008;

	/** 转换出错 */
	public static final Integer CONVERSION_NOTSUPPORTED_EXCEPTION = 1004009;

	/** 类型不匹配 */
	public static final Integer TYPEM_ISMATCH_EXCEPTION = 1004010;

	/** 消息不可读 */
	public static final Integer HTTP_MESSAGE_NOTREADABLE_EXCEPTION = 1004011;

	/** 消息不可写 */
	public static final Integer HTTP_MESSAGE_NOTWRITABLE_EXCEPTION = 1004012;

	/** 方法参数验证不正确 */
	public static final Integer METHOD_ARGUMENT_NOTVALID_EXCEPTION = 1004013;

	/** 缺少请求体 */
	public static final Integer MISSING_SERVLET_REQUESTPART_EXCEPTION = 1004014;

	/** 绑定异常 */
	public static final Integer BIND_EXCEPTION = 1004015;

	/** End --> */

	/**
	 * ===================== 错误信息 =====================
	 */
	/** 默认的异常信息 */
	public static final String DEF_ERROR_MSG = "Service exception";

	/** 请求参数异常信息 */
	public static final String REQUEST_PARAM_MSG = "Request parameter exception";
}
