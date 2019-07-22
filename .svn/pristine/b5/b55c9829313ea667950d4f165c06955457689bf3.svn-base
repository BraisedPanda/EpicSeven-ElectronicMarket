package demo.order.action;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import demo.cart.entity.Cart;
import demo.cart.entity.CartItem;
import demo.order.entity.Order;
import demo.order.entity.OrderItem;
import demo.order.service.OrderService;
import demo.user.entity.User;

public class OrderAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4202450750331329755L;
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public HttpServletRequest getRequest(){
		HttpServletRequest request = ServletActionContext.getRequest();
		return request;
	}
	
	public HttpSession getSession(){
		HttpSession session = getRequest().getSession();
		return session;
	}
	
	/*
	 * ¹ºÂò¹¦ÄÜ
	 */
	public String addToOrder(){
		HttpSession session = getSession();
		HttpServletRequest request = getRequest();
		
		
		Cart cart = (Cart) session.getAttribute("cart");
		User user = (User) session.getAttribute("user");
		Order order = new Order();
		order.setOrdertime(new Date());
		order.setState("0");
		order.setTotal(cart.getTotal());
		order.setUser(user);
		
	   Set<OrderItem> orderItemList = new HashSet();
		for (CartItem item : cart.getCartItem()) {
			OrderItem orderItem = new OrderItem();
			orderItem.setGoods(item.getGoods());
			orderItem.setSubtotal(item.getTotal());
			orderItem.setCount(item.getCount());
			orderService.addOrderItem(orderItem);
			orderItemList.add(orderItem);
			
		}
		order.setOrderItemSet(orderItemList);
		orderService.addOrder(order);
		
		
		request.setAttribute("order", order);
		
		cart.clear();
		return "addToOrder";
		
	}
	public String myOrder(){
		HttpSession session = getSession();
		HttpServletRequest request = getRequest();
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		List<Order> orderList = orderService.findOrderByUid(uid);
		request.setAttribute("orderList",orderList);
		
		return "myOrder";
	}
}
