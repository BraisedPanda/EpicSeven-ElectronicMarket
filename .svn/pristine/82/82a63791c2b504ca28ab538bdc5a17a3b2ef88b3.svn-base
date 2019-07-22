package demo.order.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.orm.hibernate4.HibernateTemplate;

import demo.category.entity.Category;
import demo.goods.dao.GoodsDao;
import demo.goods.entity.Goods;
import demo.order.entity.Order;
import demo.order.entity.OrderItem;

import demo.order.entity.OrderItem;

public class OrderDaoImpl implements OrderDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	private GoodsDao goodsDao;
	
	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	public void addOrderItem(OrderItem orderItem) {
		hibernateTemplate.save(orderItem);
		
	}

	public void addOrder(Order order) {
		hibernateTemplate.save(order);
		
	}
	//根据用户名，查出所有的订单
	public List<Order> findOrderByUid(String uid) {
		List<Order> orderList = 
				(List<Order>) hibernateTemplate.find("from Order o where o.user.uid=?", uid);
		
		//为每一个order中具体的OrderItem赋值
		for (Order order : orderList) {
			String oid = order.getOid();
			//list转set
			Set<OrderItem> orderItemSet = new HashSet(findOrderItemByOid(oid));
			
			//为每一个OrderItem赋值（主要是赋值goods属性）
			for (OrderItem orderItem : orderItemSet) {
				String gid = orderItem.getGoods().getGid();
				Goods goods= goodsDao.findGoodsById(gid);
				
				orderItem.setGoods(goods);
			
				
			}
			
			order.setOrderItemSet(orderItemSet);
			
		}
		return orderList;
	}
	
	//根据订单号，查询所有的订单条目
	public List<OrderItem> findOrderItemByOid(String oid){
		List<OrderItem> orderItemList = 
				(List<OrderItem>) hibernateTemplate.find("from OrderItem oi where oi.order.oid=?",oid);
		return orderItemList;
	}
}
