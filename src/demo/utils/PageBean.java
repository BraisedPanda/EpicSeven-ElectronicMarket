package demo.utils;

import java.util.List;

import demo.goods.entity.Goods;

public class PageBean {
	//��ǰҳ
	private Integer currentPage;
	//�ܼ�¼��
	private Integer totalCount;
	//ÿҳ��С
	private Integer pageSize;
	//��ҳ��
	private Integer totalPage;
	//��ѯ����Ʒ����
	private List<Goods> goodsList;
	//��ʼλ��
	private Integer begin;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<Goods> getGoodsList() {
		return goodsList;
	}
	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}
	public Integer getBegin() {
		return begin;
	}
	public void setBegin(Integer begin) {
		this.begin = begin;
	}
	
}
