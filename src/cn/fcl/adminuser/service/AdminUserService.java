package cn.fcl.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import cn.fcl.adminuser.dao.AdminUserDao;
import cn.fcl.adminuser.vo.AdminUser;

/**
 * 后台登录业务层
 * @author YU
 *
 */
@Transactional
public class AdminUserService {
	
	//注入Dao
	private AdminUserDao adminUserDao;

	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	/**
	 * 业务层登录的方法
	 * @param adminUser
	 * @return
	 */
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
	
	
}
