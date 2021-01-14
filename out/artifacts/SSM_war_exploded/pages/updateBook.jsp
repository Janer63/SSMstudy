<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/1/12
  Time: 19:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <jsp:include page="common/head.jsp"/>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h2>
                    <small>修改书籍</small>
                </h2>
            </div>
        </div>
    </div>
    <form action="book/updateBook" method="get">
        <input type="hidden" name="bookId" value="${nowbook.bookId}">
        <div class="form-group">
            <label for="bookName">书籍名称：</label>
            <input type="text" class="form-control" id="bookName" name="bookName" value="${nowbook.bookName}">
        </div>
        <div class="form-group">
            <label for="bookCount">书籍数量：</label>
            <input type="text" class="form-control" id="bookCount" name="bookCount" value="${nowbook.bookCount}">
        </div>
        <div class="form-group">
            <label for="detail">书籍详情：</label>
            <input type="text" class="form-control" id="detail" name="detail" value="${nowbook.detail}">
        </div>
        <div class="form-group">
            <input type="submit" value="提交">
        </div>
    </form>
</div>
</body>
</html>
