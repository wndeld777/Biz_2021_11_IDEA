<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<script src="${rootPath}/webjars/jquery/dist/jquery.min.js"></script>
<script>
    $(function (){

        // 입력박스에서 tab 을 누르거나 마우스를 다른 곳으로 클릭했을때
        // lost focus
        $("input#username").on("blur",function (){

            // ID 중복검사
            $.ajax({
              url:"${rootPath}/member/idcheck",
                data : {username:$(this).val()}
            })
            .done(function(result){
                if(result){
                    // alert("이미 사용중인 ID 입니다")
                    $("div.input_error").text(
                        "이미 사용중인 ID 입니다"
                    )
                    $(this).focus()
                }else{
                    // alert("사용 가능한 ID 입니다")
                    $("div.input_error").text(
                        "사용 가능한 ID 입니다"
                    )
                    .css("color","blue")
                    $("#password").focus()
                }
            })
        })
        $("button.btn_join_ok").on("click",function (){
            const username = $("#username")
            const password = $("#password")
            const re_password = $("#re_password")

            if(username.val() === ""){
                alert("사용자 이름은 반드시 입력하세요")
                username.focus()
                return false
            }
            if(password.val() === ""){
                alert("비밀번호는 반드시 입력하세요")
                password.focus()
                return false
            }
            if(re_password.val() === ""){
                alert("비밀번호를 한번 더 입력하세요")
                re_password.focus()
                return false
            }
            if(password.val() !== re_password.val()){
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다")
                password.val("")
                re_password.val("")
                password.focus()
                return false
            }
            if(confirm("회원가입을 신청할까요?")){
                $("form.join").submit()
            }

        })
    })
</script>
<style>
    div.input_error{
        color:red;
        font-weight: bold;
    }
</style>
<form:form cssClass="join" method="POST">
    <fieldset>
        <legend>회원가입</legend>
        <div>
            <input name="username" id="username" placeholder="사용자 이름"/>
        </div>
        <div class="input_error"></div>
        <div>
            <input type="password" id="password" name="password" placeholder="비밀번호"/>
        </div>
        <div>
            <input type="password" id="re_password" name="re_password" placeholder="비밀번호확인"/>
        </div>
        <div>
            <button type="button" class="btn btn_join_ok">회원가입 신청</button>
        </div>
    </fieldset>
</form:form>

<script>
    document.querySelector("#userid").addEventListener("")
</script>