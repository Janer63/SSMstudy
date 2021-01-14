<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/1/12
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="common/head.jsp"/>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h2>
                        <small>书籍列表</small>
                    </h2>
                </div>
            </div>

            <div class="row">
                <%--添加图书--%>
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="pages/addBook.jsp">添加图书</a>
                    <a class="btn btn-primary" href="book/allBooks">全部图书</a>
                </div>
                <div class="col-md-4 column"></div>
                <%--查询图书--%>
                 <div class="col-md-4 column">
                     <form action="book/queryBook" method="post" style="float: right">
                         <input type="text" name="queryBookName" class="form-control" placeholder="请输入要查询的图书名称">
                         <input type="submit" value="查询" class="btn btn-primary">
                     </form>
                 </div>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped" >
                <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${allBooks}" var="book">
                        <tr>
                            <td>${book.bookId}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCount}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="book/toupdatepage?id=${book.bookId}">修改</a>
                                &nbsp; | &nbsp;
                                <a href="book/deleteBook?id=${book.bookId}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
