package cn.fcl.adminuser.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.fcl.adminuser.vo.AdminUser;

/**
 * 
 * @author YU
 * 
 */
public class AdminUserDao extends HibernateDaoSupport {

	/**
	 * µÇÂ¼µÄ·½·¨
	 * 
	 * @param adminUser
	 * @return
	 */
	public AdminUser login(AdminUser adminUser) {
		String hql = "from AdminUser where username = ? and password = ?";
		List<AdminUser> list = this.getHibernateTemplate().find(hql,
				adminUser.getUsername(), adminUser.getPassword());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
