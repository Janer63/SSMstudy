import org.junit.Test;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import study.ssm.Dao.BookMapper;
import study.ssm.Service.BookService;
import study.ssm.pojo.Book;

import java.util.List;

public class myTest {

    @Test
    public void test1(){
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        BookMapper bean = context.getBean(BookMapper.class);
        List<Book> books = bean.queryAllBook();
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void test2(){
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService service = context.getBean(BookService.class);
        service.deleteBookById(4);
    }
}


