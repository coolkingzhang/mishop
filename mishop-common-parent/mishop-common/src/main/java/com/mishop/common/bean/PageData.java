package com.mishop.common.bean;

import java.io.Serializable;
import java.util.List;

/**
 * 通用分页
 * 
 * @author zhang zhihe
 * @date 2015年12月14日 下午2:40:49
 */
public class PageData<T> implements Serializable {

	private static final long serialVersionUID = 7583013970905172965L;

	private Integer totalNum;

	private Integer totalPage;

	private Integer pageSize;

	private Integer pageNO;

	private List<T> list;

	public Integer getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(Integer totalNum) {
		this.totalNum = totalNum;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageNO() {
		return pageNO;
	}

	public void setPageNO(Integer pageNO) {
		this.pageNO = pageNO;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}
}