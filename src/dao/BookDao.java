package dao;

import java.util.List;

import entity.Book;

public interface BookDao {

	public String publish(String about, String title, String bookname, String news, String address, String phone,
			String studentname);

	public  List<Book> list();

	public String updatebook(String bid,  String title, String bookname, String news, String address, String phone, String status);

	public String deletebook(String bid);

	public String searchbook(String search);

	public String searchaboutbook(String aboutbook);

}
