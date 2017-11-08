package cn.fcl.user.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.user.vo.User;

public class UserDao extends HibernateDaoSupport{

	// �����β�ѯ�Ƿ��и��û�:
	public User findByUsername(String username){
		String hql = "from User u where u.username = ?";
		List<User> list = this.getHibernateTemplate().find(hql, username);
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
	
	// ע���û��������ݿ����ʵ��
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	
	
	// �޸��û�״̬�ķ���
	public void update(User existUser) {
		this.getHibernateTemplate().update(existUser);
	}

	// �û���¼�ķ���
	public User login(User user) {
		String hql = "from User u where u.username = ? and u.password = ? and u.state = ?";
		List<User> list = this.getHibernateTemplate().find(hql, user.getUsername(),user.getPassword(),1);
		if(list != null && list.size() > 0){
			return list.get(0);
		}
		return null;
	}
}
