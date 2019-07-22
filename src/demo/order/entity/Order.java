package demo.order.entity;

import java.util.Date;
import java.util.Set;

import demo.user.entity.User;

public class Order {
	
	private String oid;
	private User user;
	private Date ordertime;
	private String state;
	private String address;
	private double total;
	private Set<OrderItem> orderItemSet;
	
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public Set<OrderItem> getOrderItemSet() {
		return orderItemSet;
	}
	public void setOrderItemSet(Set<OrderItem> orderItemSet) {
		this.orderItemSet = orderItemSet;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", user=" + user + ", ordertime="
				+ ordertime + ", state=" + state + ", address=" + address
				+ ", total=" + total + ", orderItemSet=" + orderItemSet + "]";
	}
	
	
}
