package demo.order.entity;

import demo.goods.entity.Goods;

public class OrderItem {
	private String oiid;
	private Goods goods;
	private double subtotal;
	private int count;
	private Order order;
	
	public String getOiid() {
		return oiid;
	}
	public void setOiid(String oiid) {
		this.oiid = oiid;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	@Override
	public String toString() {
		return "OrderItem [oiid=" + oiid + ", goods=" + goods + ", subtotal="
				+ subtotal + ", count=" + count + ", order=" + order + "]";
	}
	
	
}
