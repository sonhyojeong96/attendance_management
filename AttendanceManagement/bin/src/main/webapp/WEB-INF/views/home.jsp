<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Simile</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">

<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP" rel="stylesheet">

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
		<form  action="/login" method="post">
			<input type="text" class="input-field"
				id="id" name="id"
				placeholder="User name or Email" required>
			 <input
				type="password" class="input-field"
				id="passWord" name="passWord"
				placeholder="Enter Password"
				required>
			<button class="submit">Login</button>
			<a class="wf-notosansjapanese" href="sign">会員登録</a>
			<button class="btn">ID/PassWord検索</button>
		</form>
	</div>

	<div class="jumbotron text-center mb-0 mt-5">
		<p>Footer</p>
	</div>

</body>
</html>
