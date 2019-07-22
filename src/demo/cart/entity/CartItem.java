package demo.cart.entity;

import java.math.BigDecimal;

import demo.goods.entity.Goods;

public class CartItem {
	private Goods goods;
	private int count;
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	public double getTotal(){
		BigDecimal price = new BigDecimal(goods.getPrice());
		BigDecimal counts = new BigDecimal(count);
		Double total = price.multiply(counts).doubleValue();
		return total;
	}
}
