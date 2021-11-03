<%--
  Created by IntelliJ IDEA.
  User: wndel
  Date: 2021-11-03
  Time: 오전 11:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
<%@ include file="/WEB-INF/views/home.jsp" %>
<link href="${rootPath}/static/css/list.css?ver=2021-11-03-006" rel="stylesheet" />
  <section>
    <table>
        <tr>
            <th>학번</th>
            <th>이름</th>
            <th>전공</th>
            <th>학년</th>
            <th>주소</th>
            <th>전화번호</th>
        </tr>
        <tr>
            <td>20210001</td>
            <td>홍길동</td>
            <td>컴퓨터공학</td>
            <td>1</td>
            <td>광주</td>
            <td>010-123-4567</td>
        </tr>
        <tr>
            <td>20210002</td>
            <td>성춘향</td>
            <td>컴퓨터공학</td>
            <td>2</td>
            <td>서울</td>
            <td>010-789-4561</td>
        </tr>
    </table>
  </section>
</body>
</html>
