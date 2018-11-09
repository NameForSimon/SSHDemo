package action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.Book;
import service.BookService;

public class BookAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7200640410208378201L;
	private BookService bookService;

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	// ��������
	public String publish() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String about = request.getParameter("about");
		String title = request.getParameter("title");
		String bookname = request.getParameter("bookname");
		String news = request.getParameter("news");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String studentname = request.getParameter("studentname");
		if (bookService.publish(about, title, bookname, news, address, phone, studentname) == "ok") {
			return "announcesuccess";
		} else {
			return "fail";
		}
	}

	// ��ȡ�б�
	public String list() {
		List<Book> booklist = bookService.list();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("booklist", booklist);

		if (bookService.list().size() > 0) {
			return "cbook";
		} else {
			return "home";
		}
	}

	// �鿴�û�������Ϣ��UserAction

	// �༭������Ϣ
	public String updatebook() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String bid = request.getParameter("bid");
		String title = request.getParameter("title");
		String bookname = request.getParameter("bookname");
		String news = request.getParameter("news");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String status = request.getParameter("status");
		if (bookService.updatebook(bid, title, bookname, news, address, phone, status) == "fail") {
			return "fail";
		} else {
			return "ok";
		}
	}

	// ɾ��
	public String deletebook() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String bid = request.getParameter("bid");
		if (bookService.deletebook(bid) == "fail") {
			return "fail";
		} else {
			return "ok";
		}
	}

	// ��ҳ��������
	public String searchbook() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String search = request.getParameter("search");
		bookService.searchbook(search);
		if (bookService.searchbook(search) == "fail") {
			return "fail";
		} else {
			return "ok";
		}
	}

	// ��Ӧ������������
	public String searchaboutbook() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String aboutbook;
		try {
			aboutbook = new String(request.getParameter("param").getBytes("iso-8859-1"), "utf-8");
			bookService.searchaboutbook(aboutbook);
			if (bookService.searchaboutbook(aboutbook) == "fail") {
				return "fail";
			} else {
				return "ok";
			}
		} catch (UnsupportedEncodingException e) {
			return "fail";
		}

	}
}
