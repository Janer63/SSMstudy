package study.ssm.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import study.ssm.Service.BookService;
import study.ssm.pojo.Book;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookService bookService;

    @RequestMapping(value = "allBooks")
    public String allBooks(Model model){
        List<Book> books = bookService.queryAllBook();
        model.addAttribute("allBooks", books);
        return "list";
    }

    @GetMapping("/addBook")
    public String addBook(Book book){
        bookService.addBook(book);
        return "redirect:/book/allBooks";
    }

    @RequestMapping("/toupdatepage")
    public String toupdatepage(int id,Model model){
        Book book = bookService.queryBookById(id);
        model.addAttribute("nowbook", book);
        return "updateBook";
    }

    @GetMapping("/updateBook")
    public String updateBook(Book book){
        bookService.updateBook(book);
        return "redirect:/book/allBooks";
    }


    @RequestMapping("/deleteBook")
    public String deleteBook(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBooks";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        List<Book> books = bookService.queryBookByName(queryBookName);
/*        if(book==null){
            return "redirect:/book/allBooks";
        }*/
        model.addAttribute("allBooks", books);
        return "list";
    }

}
