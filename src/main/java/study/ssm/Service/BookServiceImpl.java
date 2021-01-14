package study.ssm.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import study.ssm.Dao.BookMapper;
import study.ssm.pojo.Book;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    public int addBook(Book book) {
        return bookMapper.addBook(book);
    }

    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public Book queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }


    public List<Book> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public List<Book> queryBookByName(String name) {
        return bookMapper.queryBookByName(name);
    }
}
