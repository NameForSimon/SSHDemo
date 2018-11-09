package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.opensymphony.xwork2.ActionContext;

import entity.Book;

public class BookDaoImpl implements BookDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public String publish(String about, String title, String bookname, String news, String address, String phone,
			String studentname) {
		if (title == "" || bookname == "") {
			return "fail";
		} else {
			Book book = new Book();
			book.setAbout(about);
			book.setTitle(title);
			book.setBookname(bookname);
			book.setNews(news);
			book.setBookaddress(address);
			book.setBookphone(phone);
			book.setStudentname(studentname);
			book.setStatus("发布成功");
			hibernateTemplate.save(book);
			return "ok";
		}

	}

	@Override
	public List<Book> list() {
		List<Book> booklist = (List<Book>) hibernateTemplate.find("from Book");
		return booklist;
	}

	@Override
	public String updatebook(String bid, String title, String bookname, String news, String address, String phone,
			String status) {
		try {
			int a = Integer.valueOf(bid.toString());
			if (hibernateTemplate.find("from Book b where b.bid=" + a).size() == 0) {
				return "fail";
			}
			String username = (String) ActionContext.getContext().getSession().get("username");
			String studentname = (String) hibernateTemplate.find("select b.studentname from Book b where b.bid= " + a)
					.get(0);
			if (studentname.equals(username)) {
				hibernateTemplate.getSessionFactory().openSession()
						.createQuery("update Book b set b.title='" + title + "',b.bookname='" + bookname + "',b.news='"
								+ news + "',b.bookaddress='" + address + "',b.bookphone='" + phone + "',b.status='"
								+ status + "' where b.bid=" + a)
						.executeUpdate();
				return "ok";
			} else {
				return "fail";
			}
		} catch (NumberFormatException e) {
			return "fail";
		}

	}

	public String deletebook(String bid) {
		try {
			int a = Integer.valueOf(bid.toString());
			if (hibernateTemplate.find("from Book b where b.bid=" + a).size() == 0) {
				return "fail";
			}
			String username = (String) ActionContext.getContext().getSession().get("username");
			String studentname = (String) hibernateTemplate.find("select b.studentname from Book b where b.bid= " + a)
					.get(0);
			if (studentname.equals(username)) {
				hibernateTemplate.getSessionFactory().openSession()
						.createQuery("delete Book b where b.studentname='" + username + "' and b.bid=" + a)
						.executeUpdate();
				return "ok";
			} else {
				return "fail";
			}
		} catch (NumberFormatException e) {
			return "fail";
		}

	}

	public String searchbook(String search) {
		List<Book> list = (List<Book>) hibernateTemplate.find("from Book b where b.bookname='" + search + "'");
		if (list.size() == 0 || search == null) {
			return "fail";
		} else {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("list", list);
			return "ok";
		}
	}

	public String searchaboutbook(String aboutbook) {
		List<Book> list = (List<Book>) hibernateTemplate.find("from Book b where b.about='" + aboutbook + "'");
		if (list.size() == 0) {
			return "fail";
		} else {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("aboutbooklist", list);
			return "ok";
		}
	}
}
