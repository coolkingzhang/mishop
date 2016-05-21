package com.mishop.common.bean;

import java.io.Serializable;

/**
 * 
 * @author zhang
 *
 * 能用api接口返回对象
 */
public class ResponseData<T> implements Serializable {

	private static final long serialVersionUID = -7576926819530318554L;

	public static final int OK = 1;

	public static final int NO = -1;

	private Boolean isSuccess;

	private Integer errorCode;

	private String message;

	private T data;

	public ResponseData() {
		super();
	}

	public ResponseData( Boolean isSuccess, T data ) {
		super();
		this.isSuccess = isSuccess;
		this.data = data;
	}

	public ResponseData( Boolean isSuccess, Integer errorCode, String message ) {
		super();
		this.isSuccess = isSuccess;
		this.errorCode = errorCode;
		this.message = message;
	}

	public Boolean getIsSuccess() {
		return isSuccess;
	}

	public void setIsSuccess( Boolean isSuccess ) {
		this.isSuccess = isSuccess;
	}

	public Integer getErrorCode() {
		return errorCode;
	}

	public void setErrorCode( Integer errorCode ) {
		this.errorCode = errorCode;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage( String message ) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData( T data ) {
		this.data = data;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}