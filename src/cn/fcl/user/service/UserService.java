package cn.fcl.user.service;

import javax.mail.MessagingException;

import cn.fcl.user.dao.UserDao;
import cn.fcl.user.vo.User;
import cn.fcl.utils.MailUtils;

public class UserService {
	// ע��UserDao
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	// ���û�����ѯ�û��ķ���:
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}

	// ҵ�������û�ע�����:
	public void save(User user) throws MessagingException {
		// �����ݴ��뵽���ݿ�
		user.setState(0); // 0:�����û�δ����.  1:�����û��Ѿ�����.
		userDao.save(user);
		// ���ͼ����ʼ�;
		MailUtils.regMailSend(user.getUsername(), 1);
	}


	// �޸��û���״̬�ķ���
	public void update(User existUser) {
		userDao.update(existUser);
	}

	// �û���¼�ķ���
	public User login(User user) {
		return userDao.login(user);
	}

}

