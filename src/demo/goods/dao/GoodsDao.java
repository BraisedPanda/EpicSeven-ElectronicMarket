package demo.goods.dao;

import java.util.List;

import demo.goods.entity.Goods;
import demo.utils.PageBean;

public interface GoodsDao {

	Goods findGoodsById(String gid);

	List<Goods> findAllHeros();

	List<Goods> findAllEquipment();

	List<Goods> findEquipment(PageBean pageBean);
	List<Goods> findHeros(PageBean pageBean);

	List<Goods> findGoods(String goodsName);

	List<Goods> findAllGoods();
	
	
}
