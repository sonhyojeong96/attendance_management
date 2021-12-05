<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Simile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<style>
</style>
<body>

	<div class="jumbotron text-center mb-0">
		<h1>Simile</h1>
	</div>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark mb-5">
		<ul class="navbar-nav">
		</ul>
	</nav>

	<div class="container text-center">
		<form action="register" method="post">
			<label>社員ID</label>
			<input type="text" class="input-field" id="employeeId" name="employeeId">
			<p>
			<label>部署コード</label>
			<input type="text" class="input-field" id="departCode" name="departCode">
			<p>
			<label>社員名</label>
			<input type="text" class="input-field" id="employName" name="employName">
			<p>
			<label>ログインID</label>
			<input type="text" class="input-field" id="loginId" name="loginId">
			<p>
			<label>ログインパスワード</label>
			<input type="text" class="input-field" id="loginPass" name="loginPass">
			<p>
			<label>フリガナ</label>
			<input type="text" class="input-field" id="phonetic" name="phonetic">
			<p>
			<label>郵便番号</label>
			<input type="text" class="input-field" id="zipcode" name="zipcode">
			<p>
			<label>住所1</label>
			<input type="text" class="input-field" id="address1" name="address1">
			<p>
			<label>住所2</label>
			<input type="text" class="input-field" id="address2" name="address2">
			<p>
			<label>電話番号</label>
			<input type="text" class="input-field" id="phoneNum" name="phoneNum">
			<p>
			<label>携帯番号</label>
			<input type="text" class="input-field" id="mobileNum" name="mobileNum">
			<p>
			<label>メール</label>
			<input type="text" class="input-field" id="email" name="email">
			<p>
			<button class="submit">Join</button>
		</form>
	</div>

	<div class="jumbotron text-center mb-0 mt-5">
		<p>Footer</p>
	</div>

</body>
</html>
