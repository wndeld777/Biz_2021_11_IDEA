<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<section>
    <form>
        <div class="head">
            <div><input placeholder="2132142132132"/></div>
            <div><input placeholder="DO it 자바"/></div>
        </div>
        <div class="body">
            <div><input placeholder="2021-10-27"/></div>
            <div><input placeholder="10:12:22"/></div>
            <div><input placeholder="12:32:12"/></div>
        </div>
        <div class="footer">
            <div><input placeholder="생각중독은 깊은 생각에 빠져 주위를 돌아보지 못하는 것이 시작이다"/></div>
            <div><input placeholder="내용을 입력해주세요"/></div>
        </div>
        <div class="btn_box">
            <div class="save" type="button">저장</div>
            <div class="reset" type="reset">새로작성</div>
            <div class="list" type="button">리스트 보기</div>
        </div>
    </form>
</section>