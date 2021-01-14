<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //抓取当前浏览器路径 并赋值给base标签
    String path=request.getScheme()+"://"+request.getServerName()+":"
            +request.getServerPort()+request.getContextPath()+"/";
    request.setAttribute("path", path);
%>
<base href="<%=path%>">
