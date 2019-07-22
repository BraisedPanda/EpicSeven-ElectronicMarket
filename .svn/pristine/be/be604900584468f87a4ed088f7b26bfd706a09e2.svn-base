package demo.cart.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart {
	 Map<String,CartItem> map = new HashMap();
	 
	 //添加条目，条目中主要内容是数量
	 public void add(CartItem cartItem){
		 String gid = cartItem.getGoods().getGid();
		 if(map.containsKey(gid)){
			 CartItem _cartItem = map.get(gid);
			 _cartItem.setCount(_cartItem.getCount()+cartItem.getCount());
			 map.put(gid, _cartItem);
		 }else{
			 map.put(gid, cartItem);
		 }
	 }
	 
	 public double getTotal(){
		 BigDecimal total = new BigDecimal("0");
		 for (CartItem cartItem : map.values()) {
			BigDecimal total1 = new BigDecimal(cartItem.getTotal()+"");
			total = total.add(total1);
		}
		 return total.doubleValue();
	 }
	 
	 public void delete(String gid){
		 map.remove(gid);
	 }
	 public void clear(){
		 map.clear();
	 }
	 
	 public Collection<CartItem> getCartItem(){
		 return map.values();
	 }
}
