package app.service;

import java.util.List;

import app.bean.UserInfo;
import app.model.User;

public interface UserService extends BaseService<Integer, User> {
	boolean deleteUser(Integer id);

	UserInfo findByEmail(String email);

	List<UserInfo> searchUser(String name, int gender);

	List<UserInfo> loadUsers();
	
	User findByEmailAndPassword(String email,String password);
	
	List<UserInfo> saveOrUpdate(List<UserInfo> userInfos);
	
	User findByIdAndPassword(Integer id,String password);

	User updateUser(UserInfo userInfo);
	
	UserInfo findByIdUser(Integer id);
}
