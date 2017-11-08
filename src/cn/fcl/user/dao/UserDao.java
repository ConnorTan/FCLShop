package cn.fcl.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.user.vo.User;

public class UserDao extends HibernateDaoSupport{

	// 按名次查询是否有该用户:
	public User findByUsername(String username){
		String hql = "from User u where u.username = ?";
		List<User> list = this.getHibernateTemplate().find(hql, username);
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
	
	// 注册用户存入数据库代码实现
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	
	
	// 修改用户状态的方法
	public void update(User existUser) {
		this.getHibernateTemplate().update(existUser);
	}

	// 用户登录的方法
	public User login(User user) {
		String hql = "from User u where u.username = ? and u.password = ? and u.state = ?";
		List<User> list = this.getHibernateTemplate().find(hql, user.getUsername(),user.getPassword(),1);
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
}
