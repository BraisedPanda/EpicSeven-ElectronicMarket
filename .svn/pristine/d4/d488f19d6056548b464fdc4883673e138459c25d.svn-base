package demo.user.service;

import javax.transaction.Transactional;

import demo.user.entity.User;

import UserDao.UserDao;
@Transactional
public class UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void add(User user) {
		userDao.add(user);
		
	}

	public User findUserByName(String username) {
		
		return userDao.findUserByUsername(username);
	}

	public User findUser(User user) throws Exception {
		User user1 = userDao.findUser(user);
		if(user1!=null){
			return user1;
		}else{
			throw new Exception("用户名或密码错误");
		}
		
	}

	public User modifyInfo(User user)  {
	
		User user1 = userDao.modifyInfo(user);
		return user1;
	}

	public User findUserByUid(String uid) {
		User user = userDao.findUserByUid(uid);
		return user;
	}
	
}
