package service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import dao.BookDao;
import entity.Book;
@Transactional

public class BookService {
	private BookDao bookDao;

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}
	 public String publish(String about,String title,String bookname,String news,String address,String phone,String studentname) {
		if( bookDao.publish(about,title,bookname,news,address,phone,studentname)=="ok")
		 {return "ok";}
		 else return null;
		
	 }
	public List<Book> list() {
		return bookDao.list();
	}
	public String updatebook(String bid,  String title, String bookname, String news, String address, String phone, String status) {
		if(bookDao.updatebook(bid,title,bookname,news,address,phone,status)=="fail") {
			return "fail";
		}
		else return "ok";
		
	}
	public String deletebook(String bid) {
		if(bookDao.deletebook(bid)=="fail") {
			return "fail";
		}
		else return "ok";
	}
	public String searchbook(String search) {
		if(bookDao.searchbook(search)=="fail") {
			return "fail";
		}
		else return "ok";
	}
	public String searchaboutbook(String aboutbook) {
		if(bookDao.searchaboutbook(aboutbook)=="fail") {
			return "fail";
		}
		else return "ok";
		
	}
	
}
