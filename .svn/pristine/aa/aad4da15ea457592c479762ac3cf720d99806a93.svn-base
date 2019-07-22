package demo.order.service;

import java.util.List;

import javax.transaction.Transactional;

import demo.order.dao.OrderDao;
import demo.order.entity.Order;
import demo.order.entity.OrderItem;
@Transactional
public class OrderService {
	private OrderDao orderDao;

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public void addOrderItem(OrderItem orderItem) {
		orderDao.addOrderItem(orderItem);
		
	}

	public void addOrder(Order order) {
		orderDao.addOrder(order);
		
	}

	public List<Order> findOrderByUid(String uid) {
		List<Order> orderList = orderDao.findOrderByUid(uid);
		return orderList;
	}
	
}
