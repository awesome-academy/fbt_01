package app.dao;

import java.util.List;

import app.model.User;

public interface UserDAO extends BaseDAO<Integer, User> {
	User findByEmail(String email);

	List<User> searchUserUsingCretial(String name);

	List<User> loadUsers();
	
	User findByIdLock(Integer id, boolean lock);
	
	User findByEmailAndPassword(String email,String password);
	
	User findByIdAndPassword(Integer id,String password);
	 
}
