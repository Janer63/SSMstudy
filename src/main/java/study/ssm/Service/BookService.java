package study.ssm.Service;

import org.apache.ibatis.annotations.Param;
import study.ssm.pojo.Book;

import java.util.List;

public interface BookService {

    int addBook(Book book);

    int updateBook(Book book);

    int deleteBookById(int id);

    Book queryBookById(int id);

    List<Book> queryAllBook();

    List<Book> queryBookByName(String name);
}
