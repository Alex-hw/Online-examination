package cn.examination.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.examination.ssm.dao.UserDao;
import cn.examination.ssm.domain.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public List<User> getUserAll(){ 
		return userDao.findUserAll();
	}
	
	public User getUserById(String account) {
		User user = userDao.getUserByAccount(account);
		return user;
	}
	
	public int Check(String account,String password){ 
		if(userDao.getUserByAccount(account).getPassword().equals(password)&&userDao.getUserByAccount(account).getScale().equals("1")) 
			return 1;	
		else if(userDao.getUserByAccount(account).getPassword().equals(password)&&userDao.getUserByAccount(account).getScale().equals("0")){
			return 10;
		}else if(userDao.getUserByAccount(account).getPassword().equals(password)&&userDao.getUserByAccount(account).getScale().equals("2")){
			return 20;
		}else {
			return 0;
		}
	}
	
	public void saveUser(String account,String password,String unitName,String tel) {
		User user = new User();
		user.setAccount(account);
		user.setPassword(password);
		user.setScale("1");
		user.setLoginStatus("0");
		user.setUnitName(unitName);
		user.setTel(tel);
		userDao.saveUser(user);
	}
	
	public void updateUser(String account,String password,String scale,String unitName,String tel) {
		User user = new User();
		user.setAccount(account);
		user.setPassword(password);
		user.setScale(scale);
		user.setLoginStatus("0");
		user.setUnitName(unitName);
		user.setTel(tel);
		userDao.updateUser(user);
	}
	
	public void deleteUser(String account) {
		userDao.deleteUser(account);
	}
}
