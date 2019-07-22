package demo.goods.service;

import java.util.List;

import javax.transaction.Transactional;

import demo.goods.dao.GoodsDao;
import demo.goods.entity.Goods;
import demo.utils.PageBean;
@Transactional
public class GoodsService {
	private GoodsDao goodsDao;
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	public Goods findGoodsById(String gid) {
		Goods goods = goodsDao.findGoodsById(gid);
		return goods;
	}

	public PageBean findAllHeros(int currentPage) {
		PageBean pageBean = new PageBean();
		List<Goods> goodsList = goodsDao.findAllHeros();
		//获得总记录数
		int totalCount = goodsList.size();
		int pageSize = 10;
		//获得总页数
		int totalPage;
		if(totalCount % pageSize ==0){
			totalPage = totalCount / pageSize;
		}else{
			totalPage = totalCount / pageSize + 1;
		}
		//获得开始位置
		int begin;
		if(currentPage - 1<=0){
			begin = 0;
		}else{
			begin = (currentPage-1) * pageSize ;
		}
		pageBean.setBegin(begin);
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		pageBean.setTotalPage(totalPage);
		/*goodsDao.findEquipment(pageBean);*/
		List<Goods> goodsList1 = goodsDao.findHeros(pageBean);
		pageBean.setGoodsList(goodsList1);
		return pageBean;
		
		
	}

	public PageBean findAllEquipment(int currentPage) {
		PageBean pageBean = new PageBean();
		List<Goods> goodsList = goodsDao.findAllEquipment();
		//获得总记录数
		int totalCount = goodsList.size();
		int pageSize = 10;
		//获得总页数
		int totalPage;
		if(totalCount % pageSize == 0){
			totalPage = totalCount / pageSize;
		}else{
			totalPage = totalCount / pageSize + 1;
		}
		//获得开始位置
		int begin;
		if(currentPage - 1<=0){
			begin = 0;
		}else{
			begin = (currentPage-1) * pageSize ;
		}
		pageBean.setBegin(begin);
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		pageBean.setTotalCount(totalCount);
		pageBean.setTotalPage(totalPage);
		/*goodsDao.findEquipment(pageBean);*/
		List<Goods> goodsList1 = goodsDao.findEquipment(pageBean);
		pageBean.setGoodsList(goodsList1);
		return pageBean;
	}

	public List<Goods> findGoods(String goodsName) {
		
		List<Goods> goodsList = goodsDao.findGoods(goodsName);
		
		
		
		
		return goodsList;
	}

	public List<Goods> findAllGoods() {
		List<Goods> goodsList = goodsDao.findAllGoods();
		return goodsList;
	}

}
