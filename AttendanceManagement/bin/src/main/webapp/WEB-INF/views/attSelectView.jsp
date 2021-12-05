<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>職員勤務照会</title>
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
		<h1>職員勤務照会</h1>
	</div>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark mb-5">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/休日管理(月)">休日管理(月)</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/共通コード">共通コード</a>
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
		<div class="row">
			<div class="col-md-4 col-sm-12">
				<table class="table table-striped table-hover mb-5">
				<colgroup>
					<col width="40%">
				</colgroup>
				<tbody class="table-striped2">
				  <tr>
					<th>年</th>
					<td>&nbsp;</td>
				  </tr>
				  <tr>
					<th>月</th>
					<td>&nbsp;</td>
				  </tr>
				</tbody>
			  </table>
		</div>

		<div class="col-md-8 col-sm-12">
			  <table class="table table-striped table-hover">
				<thead class="thead-dark">
				  <tr>
					<th>日時</th>
					<th>出勤時間</th>
					<th>退勤時間</th>
					<th>業務内容</th>
					<th>超過勤務時</th>
					<th>超過業務内容</th>
				  </tr>
				</thead>
				<tbody>
					<!-- モデルから貯蔵されたリストを取ってくる -->
						<c:forEach var="list" items="${list}">
							<tr>
							<td>
							<c:choose>
								<c:when test="${list.date1 eq null}">no data</c:when>
								<c:otherwise>${list.date1}</c:otherwise>
							</c:choose>
							</td>
								<!-- ヌール確認 -->
								<!-- timestampは時間の形を更新するとき、formatDateっを使う。HH:mmは時、分だけを表現する -->
								<td><fmt:formatDate pattern="HH:mm" value="${list.attendTime}"/></td>
								<td><fmt:formatDate pattern="HH:mm" value="${list.leaveTime}"/></td>
								<td>${list.workContents}</td>
								<td>${list.overWorkTime}</td>
								<td>${list.overWorkContents}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>

	<div class="jumbotron text-center mb-0 mt-5">
	  <p>Footer</p>
	</div>

</body>
</html>
