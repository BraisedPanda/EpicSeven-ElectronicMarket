package demo.goods.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import demo.goods.entity.Goods;
import demo.goods.service.GoodsService;
import demo.utils.PageBean;

public class GoodsAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4676192131272223096L;
	private GoodsService goodsService;
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
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
	 * 根据物品id查找物品
	 */
	public String findGoodsById(){
		HttpServletRequest request = getRequest();
		
		String gid = request.getParameter("gid");
		
		Goods goods = goodsService.findGoodsById(gid);
		request.setAttribute("goods", goods);
		
		return "findGoodsById";
	}
	/*
	 * 查询所有英雄
	 */
	public String findAllHeros(){
		HttpServletRequest request = getRequest();
		String currentPage = request.getParameter("currentPage");
		
		PageBean pageBean = goodsService.findAllHeros(Integer.parseInt(currentPage));
		List<Goods> goodsList = pageBean.getGoodsList();
		request.setAttribute("goodsList", goodsList);
		request.setAttribute("pageBean", pageBean);
		
		
		return "findAllHeros";
	}
	/*
	 * 查询所有装备
	 */
	public String findAllEquipment(){
		HttpServletRequest request = getRequest();
		String currentPage = request.getParameter("currentPage");
		
		PageBean pageBean = goodsService.findAllEquipment(Integer.parseInt(currentPage));
		List<Goods> goodsList = pageBean.getGoodsList();
		request.setAttribute("goodsList", goodsList);
		request.setAttribute("pageBean", pageBean);
		return "findAllEquipment";
	}
	/*
	 * 模糊查找物品
	 */
	public String findGoods(){
		HttpServletRequest request = getRequest();
		String goodsName = request.getParameter("goodsname");
		
		List<Goods> goodsList = goodsService.findGoods(goodsName);
		
		
		request.setAttribute("goodsList",goodsList);
		return "findGoods";
	}
	/*
	 * 热门商品和猜你喜欢
	 */
	public String random(){
		HttpServletRequest request = getRequest();
		List<Goods> goodsList = goodsService.findAllGoods();
		List list = new ArrayList(goodsList);
		
		int maxIndex = goodsList.size();
		while(maxIndex>=15){
			Random random = new Random();
			 int i = list.size();
			 int r = random.nextInt(i);
			
			 list.remove(r);
			 maxIndex--;
		}
		request.setAttribute("goodsList",list);
		
		return "random";
	}
}
