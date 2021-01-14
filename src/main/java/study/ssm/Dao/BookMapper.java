package study.ssm.Dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import study.ssm.pojo.Book;

import java.util.List;

public interface BookMapper {

    int addBook(Book book);

    int updateBook(Book book);

    int deleteBookById(@Param("bookId") int id);

    Book queryBookById(@Param("bookId") int id);

    List<Book> queryAllBook();

    List<Book> queryBookByName(@Param("bookName") String name);
}
