<%--
  Created by IntelliJ IDEA.
  User: wndel
  Date: 2021-11-03
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>학사관리시스템</title>
</head>
<style>
    *{
        box-sizing: border-box;
        margin:0;
        padding:0;
    }
    header{
        text-align: center;
        text-shadow:1px 1px 1px black;
        color:white;
        padding:2rem;
        background-color: #2d83ff;
    }

</style>

<body>
    <header>
        <h1>고려 고교 학사관리 2021 v1</h1>
    </header>
    <nav class="main_nav">
        <%@ include file="/WEB-INF/views/nav.jsp" %>
    </nav>
</body>
</html>
<script>
    document.addEventListener("DOMContentLoaded",()=>{
        const nav = document.querySelector("nav.main_nav");
        nav.addEventListener("click",(e)=>{
            let tagName = e.target.tagName;
            if(tagName === "LI"){
                let menuText = e.target.textContent;
                let urlPath = `${rootPath}`

                if(menuText === "Home"){
                    urlPath += "/";
                }else if(menuText === "학생정보"){
                    urlPath += "/list";
                }
                location.href = urlPath;
            }
        })
    })
</script>