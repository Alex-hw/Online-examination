package cn.examination.ssm.dao;

import java.util.List;
import cn.examination.ssm.domain.User;

public interface UserDao {
 	public User getUserByAccount(String account);
 	public List<User> findUserAll();
 	public void saveUser(User user);
 	public void updateUser(User user);
 	public void deleteUser(String account);
}
