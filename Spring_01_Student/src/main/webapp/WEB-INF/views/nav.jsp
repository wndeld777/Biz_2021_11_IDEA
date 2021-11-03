<%--
  Created by IntelliJ IDEA.
  User: wndel
  Date: 2021-11-03
  Time: 오전 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    ul{
        display: flex;
        list-style: none;

        background-color: gray;

    }
    li{
        padding:1rem;
        margin: 0 10px;
        color:white;
        font-weight: bold;
    }
    li:hover{
        cursor:pointer;
        background-color: #ccc;
    }

</style>
<body>
    <ul>
        <li>Home</li>
        <li class="stu_info">학생정보</li>
        <li>성적알람표</li>
    </ul>
</body>
</html>
