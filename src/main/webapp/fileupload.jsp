<%--
  Created by IntelliJ IDEA.
  User: jangsechang
  Date: 2022/11/15
  Time: 10:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
    String filename = "";
    int sizeLimit = 15*1024*1024;

    String realPath = request.getServletContext().getRealPath("upload");
    File dir = new File(realPath);
    if(!dir.exists()) dir.mkdirs();

    MultipartRequest multipartRequest = null;
    multipartRequest = new MultipartRequest(request,realPath,sizeLimit,"utf-8",new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("photo");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
