<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="./css/login.css">
<script>
document.addEventListener("DOMContentLoaded", () => {
    const adminTab = document.getElementById('admin-tab');
    const employeeTab = document.getElementById('employee-tab');
    const roleInput = document.getElementById('role');
    const loginForm = document.frm; // <form name="frm">에 접근

    adminTab.addEventListener('click', () => {
        adminTab.classList.add('active');
        employeeTab.classList.remove('active');
        loginForm.role.value = 'admin'; // role 값을 admin으로 설정
    });

    employeeTab.addEventListener('click', () => {
        employeeTab.classList.add('active');
        adminTab.classList.remove('active');
        loginForm.role.value = 'employee'; // role 값을 employee로 설정
    });

    // 로그인 버튼 클릭 시 폼 전송
    const submitButton = document.querySelector('.login-btn');
    submitButton.addEventListener('click', () => {
        loginForm.action = "";
        loginForm.method = "post";
        loginForm.submit(); // 폼 전송
    });
});
</script>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
</head>
<body>
    <div class="container">
	    <div class="tab-container">
	        <button class="tab-btn active" id="admin-tab">관리자</button> 
	        <button class="tab-btn" id="employee-tab">직원</button>
	    </div>
	    <div class="login-box" id="loginBox" data-role="admin">
	        <h2>로그인</h2>
	        <form name="frm">
	            <input type="hidden" id="role" name="role" value="admin">
	            <div class="form-group">
	                <label for="userid">아이디</label>
	                <input type="text" id="userid" name="userid" required>
	            </div>
	            <div class="form-group">
	                <label for="userpassword">비밀번호</label>
	                <input type="password" id="userpassword" name="userpassword" required>
	            </div>
	            <button type="button" class="login-btn">로그인</button>
	        </form>
	        <a class="find-link">회원가입</a>
	        <a class="find-link">아이디/비밀번호찾기</p>
	    </div>
	</div>
</body>
</html>
