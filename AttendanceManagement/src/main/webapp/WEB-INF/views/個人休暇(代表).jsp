<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>個人休暇(代表)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="jumbotron text-center mb-0" >
		<h1>個人休暇(代表)</h1>
		<p>Resize this responsive page to see the effect!</p> 
	</div>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark mb-5">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/休日管理(月)">休日管理(月)</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/commonCode">共通コード</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/職員管理">職員管理</a></li>
			<li class="nav-item"><a class="nav-link" href="attSelect">職員勤務照会</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="attInsertView">勤務登録</a></li>
			<li class="nav-item"><a class="nav-link" href="/holidayApply">個人休暇申請</a></li>
			<li class="nav-item active"><a class="nav-link" href="/個人休暇(代表)">個人休暇(代表)</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/社員業務指示">社員業務指示</a>
			</li>
		</ul>
	</nav>

	<div class="container text-center">
		<form>
			<div class="row">
				<div class="col-sm-4 text-left">
					<select name="month" class="custom-select">
						<option selected>year</option>
						<option value="2002">2020</option>
						<option value="2019">2019</option>
						<option value="2018">2018</option>
					</select>
				</div>
				<div class="col-sm-8 text-right mb-3">
				  <button type="button" class="btn btn-primary">追加</button>
				  <button type="button" class="btn btn-danger">削除</button>
				  <button type="button" class="btn btn-success">貯蔵</button>
				</div>
			</div>

			<table class="table table-striped table-hover">
			<thead class="thead-dark">
			  <tr>
				<th>一連番号</th>
				<th>名前</th>
				<th>休日種類</th>
				<th>開始日</th>
				<th>終了日</th>
				<th>理由</th>
				<th>日数</th>
				<th>承認区分</th>
			  </tr>
			</thead>
			<tbody>
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>			  
			  <tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			  </tr>			
			</tbody>
			</table>
		</form>
	</div>

	<div class="jumbotron text-center mb-0 mt-5">
	  <p>Footer</p>
	</div>

</body>
</html>
