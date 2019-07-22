package demo.goods.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.HibernateTemplate;

import demo.goods.entity.Goods;
import demo.utils.PageBean;

public class GoodsDaoImpl implements GoodsDao {
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	/*
	 *根据gid查找物品
	 */
	public Goods findGoodsById(String gid) {
		Goods goods = hibernateTemplate.get(Goods.class, gid);
		
		return goods;
	}
	/*
	 * 查询所有的heros
	 */
	public List<Goods> findAllHeros() {
		List<Goods> goodsList = (List<Goods>) hibernateTemplate.find("from Goods where cid=?", 1);
		return goodsList;
	}
	/*
	 * 查询所有的装备
	 */
	public List<Goods> findAllEquipment() {
		List<Goods> goodsList = (List<Goods>) hibernateTemplate.find("from Goods where cid=?", 2);
		return goodsList;
	}
	/*
	 * 分页查找装备
	 */
	public List<Goods> findEquipment(PageBean pageBean) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		criteria.add(Restrictions.eq("ccid", "2"));
		List<Goods> goodsList = 
				(List<Goods>) hibernateTemplate.findByCriteria(criteria,pageBean.getBegin(),pageBean.getPageSize());
		return goodsList;
	}
	/*
	 * 分页查找英雄
	 */
	public List<Goods> findHeros(PageBean pageBean) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		criteria.add(Restrictions.eq("ccid", "1"));
		List<Goods> goodsList = 
				(List<Goods>) hibernateTemplate.findByCriteria(criteria,pageBean.getBegin(),pageBean.getPageSize());
		return goodsList;
	}
	/*
	 *根据物品名称模糊查找物品
	 */
	public List<Goods> findGoods(String goodsName) {
		
		if(goodsName!=null || !goodsName.trim().isEmpty() || goodsName.length()>0){
			DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
			criteria.add(Restrictions.like("gname","%"+goodsName+"%"));
			List<Goods> goodsList = (List<Goods>) hibernateTemplate.findByCriteria(criteria);
			return goodsList;
		}else{
			
			List<Goods> goodsList = (List<Goods>) hibernateTemplate.find("from Goods");
			return goodsList;
			
		}
	}
	
	/*public List<Goods> findGoods1(PageBean pageBean) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Goods.class);
		
		List<Goods> goodsList = 
				(List<Goods>) hibernateTemplate.findByCriteria(criteria,pageBean.getBegin(),pageBean.getPageSize());
		return goodsList;
	}*/
	public List<Goods> findAllGoods(){
		
		List<Goods> goodsList = (List<Goods>) hibernateTemplate.find("from Goods");
		return goodsList;
	}
	
	
}
