package UserDao;

import java.util.List;

import org.springframework.orm.hibernate4.HibernateTemplate;

import demo.user.entity.User;

public class UserDaoImpl implements UserDao {
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	/*
	 * 用户注册功能
	 */
	public void add(User user) {
		hibernateTemplate.save(user);
		
	}
	/*
	 * 根据用户名查找用户
	 */
	public User findUserByUsername(String username) {
		List<User> userList = (List<User>) hibernateTemplate.find("from User where username=?", username);
		if(userList.size()>0){
			return userList.get(0);
		}else{
			return null;
		}
		
	}
	/*
	 * 根据用户名和密码查找用户是否存在
	
	 */
	public User findUser(User user) {
		List<User> userList =(List<User>) hibernateTemplate.find("from User where username=? and password=?", user.getUsername(),user.getPassword());
		if(userList.size()>0){
			return userList.get(0);
		}else
		
		return null;
	}
	/*
	 * 修改个人信息
	 */
	public User modifyInfo(User user) {
		 hibernateTemplate.update(user);
		 User user1 = hibernateTemplate.get(User.class,user.getUid());
		return user1;
	}
	/*
	 * 根据用户Id查找用户
	 */
	public User findUserByUid(String uid) {
		User user = hibernateTemplate.get(User.class,uid);
		return user;
	}
	
	
}
