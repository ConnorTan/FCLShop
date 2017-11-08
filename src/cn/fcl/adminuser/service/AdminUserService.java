package cn.fcl.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import cn.fcl.adminuser.dao.AdminUserDao;
import cn.fcl.adminuser.vo.AdminUser;

/**
 * ��̨��¼ҵ���
 * @author YU
 *
 */
@Transactional
public class AdminUserService {
	
	//ע��Dao
	private AdminUserDao adminUserDao;

	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	/**
	 * ҵ����¼�ķ���
	 * @param adminUser
	 * @return
	 */
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
	
	
}
