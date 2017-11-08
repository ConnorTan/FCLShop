package cn.fcl.user.service;

import javax.mail.MessagingException;

import cn.fcl.user.dao.UserDao;
import cn.fcl.user.vo.User;
import cn.fcl.utils.MailUtils;

public class UserService {
	// 注入UserDao
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	// 按用户名查询用户的方法:
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}

	// 业务层完成用户注册代码:
	public void save(User user) throws MessagingException {
		// 将数据存入到数据库
		user.setState(0); // 0:代表用户未激活.  1:代表用户已经激活.
		userDao.save(user);
		// 发送激活邮件;
		MailUtils.regMailSend(user.getUsername(), 1);
	}


	// 修改用户的状态的方法
	public void update(User existUser) {
		userDao.update(existUser);
	}

	// 用户登录的方法
	public User login(User user) {
		return userDao.login(user);
	}

}

