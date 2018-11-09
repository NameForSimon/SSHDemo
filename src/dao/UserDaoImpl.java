package dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;

import com.opensymphony.xwork2.ActionContext;

import entity.Book;
import entity.User;

public class UserDaoImpl implements UserDao {

	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/*
	 * public void add() { }
	 */
	@Override
	public User login(String a, String b) {

		List<User> list = (List<User>) hibernateTemplate.find("from User where username=? and password=?",
				new String[] { a, b });
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public String resign(String a, String b, String c, String d) {
		List<User> list = (List<User>) hibernateTemplate.find("from User where username=? and password=?",
				new String[] { a, b });
		if (list.size() > 0 ||a=="") {
			return "exit";
		} else {
			User user = new User();
			user.setUsername(a);
			user.setPassword(b);
			user.setAddress(c);
			user.setPhone(d);
			hibernateTemplate.save(user);
			return "ok";
		}

	}

	@Override
	public String update(String a, String b, String c, String d) {
		hibernateTemplate.getSessionFactory().openSession()
				.createQuery("update User u set u.address='"+c+"' , u.password='"+b+"' , u.phone='"+d+"' where u.username='"+a+"'")
				.executeUpdate();
		return "ok";
	}
	
	//查看该用户发布信息
	@Override
	public List<Book> userbooklist(){
		String username=(String) ActionContext.getContext().getSession().get("username");
		List<Book> userbooklist=(List<Book>) hibernateTemplate.find("from Book where studentname=?",new String[] {username});
			return userbooklist;
	}
}