package demo.user.action;

import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import demo.cart.entity.Cart;
import demo.user.entity.User;
import demo.user.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4899976377651896965L;
	private User user= new User();
	public User getModel() {
		
		return user;
	}
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	/*
	 * 构造获取response,session等方法
	 */
	public HttpServletRequest getRequest(){
		HttpServletRequest request = ServletActionContext.getRequest();
		return request;
	}
	public HttpServletResponse getResponse(){
		HttpServletResponse response = ServletActionContext.getResponse();
		return response;
	}
	public HttpSession getSession(){
		HttpSession session = getRequest().getSession();
		return session;
	}
	/*
	 * 用户注册方法
	 */
	public String regist(){
		
		userService.add(user);
		HttpServletRequest request = getRequest();
		request.setAttribute("msg", user.getUsername()+",恭喜您注册成功");	
		return "regist";
	}
	/*
	 * 检测用户注册合法性
	 */
	public String modify() throws Exception{
		HttpServletRequest  request = getRequest();
		HttpServletResponse response = getResponse();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = userService.findUserByName(username);
		
		
		//验证用户名
		// 0 ：表示用户名不能为空  1：表示该用户名已经被注册过了 2:表示用户名长度有问题 3：表示用户名可用
		if(username==null || username.trim().isEmpty()){
			response.getWriter().print("0");
		}else if(user != null){
			response.getWriter().print("1");
		}else if(username.length()<2 || username.length()>=15){
			response.getWriter().print("2");
		}
		else {
			response.getWriter().print("3");
		}
		
		return NONE;
		
	}
	/*
	 * 用户登录功能
	 */
	public String login(){
		HttpServletRequest request = getRequest();
		HttpSession session = getSession();
		try {
			User user1 = userService.findUser(user);
			session.setAttribute("user", user1);
			Cart cart = new Cart();
			session.setAttribute("cart", cart);
			return "login_success";
		} catch (Exception e) {
			String error = e.getMessage();
			request.setAttribute("error", error);
			return "login_failed";
		}

	}
	/*
	 * 用户退出功能
	 */
	public String quit(){
		HttpSession session = getSession();
		session.removeAttribute("user");
		session.removeAttribute("cart");
		return "quit";
	}
	/*
	 * 用户信息修改
	 */
	public String myInfo(){
		HttpServletRequest request =  getRequest();
		Map<String,String> errors = new HashMap();
		String username = user.getUsername();
		String password = user.getPassword();
		String email = user.getEmail();
		String phonenumber = user.getPhonenumber();
		//验证用户名、邮箱、密码的合法性
		if(username.trim().isEmpty() || username ==null){
			errors.put("username", "用户名不能为空");
		}else if(username.length()<2 || username.length()>20){
			errors.put("username","用户名长度必须在2~20之间");
		}
		
		if(password.trim().isEmpty() || password ==null){
			errors.put("password", "密码不能为空");
		}else if(password.length()<3 || password.length()>15){
			errors.put("password","密码长度必须在3~15之间");
		}
		
		if(email.trim().isEmpty() || email == null){
			errors.put("email", "邮箱不能为空");
		}else if(!email.matches("\\w+@\\w+\\.+\\w+")){
			errors.put("email", "邮箱格式不正确");
		}
		if(phonenumber.length() != 11){
			errors.put("phonenumber","电话号码位数不正确");
		}
		//如果错误，返回到ERROR界面
		if(errors.size()>0){
			request.setAttribute("user", user);
			
			request.setAttribute("errors", errors);
			return "modifyError";
		}else{
		//成功界面
		User user1 = userService.modifyInfo(user);
		request.setAttribute("user", user1);
		request.setAttribute("msg","修改成功");
		return "modifySuccess";
		}
	}
	/*
	 * 根据用户Id查找用户
	 */
	public String findUser(){
		HttpSession session = getSession();
		HttpServletRequest request = getRequest();
		User user = (User) session.getAttribute("user");
		String uid = user.getUid();
		User user1 = userService.findUserByUid(uid);
		request.setAttribute("user",user1);
		return "findUser";
	}
	
	
	
}
