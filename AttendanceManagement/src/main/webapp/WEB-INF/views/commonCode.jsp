<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
<title>共通コード</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/commonCode.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="jumbotron text-center mb-0">
		<h1>共通コード</h1>
		<p>Resize this responsive page to see the effect!</p>
	</div>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark mb-5">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/休日管理(月)">休日管理(月)</a>
			</li>
			<li class="nav-item active"><a class="nav-link" href="/commonCode">共通コード</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/職員管理">職員管理</a></li>
			<li class="nav-item"><a class="nav-link" href="attSelect">職員勤務照会</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="attInsertView">勤務登録</a></li>
			<li class="nav-item"><a class="nav-link" href="/holidayApply">個人休暇申請</a></li>
			<li class="nav-item"><a class="nav-link" href="/個人休暇(代表)">個人休暇(代表)</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/社員業務指示">社員業務指示</a>
			</li>
		</ul>
	</nav>

	<div class="container text-center">
		<!-- <form name="commonForm" id="commonForm" method="post"> -->
			<div class="row">
				<div class="col-sm-3 text-left search_area">
					<select name="type" class="custom-select">
						<option value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>全て</option>
						<option value="1" <c:out value="${pageMaker.cri.type eq '1'?'selected':''}"/>>会社コード</option>
						<option value="2" <c:out value="${pageMaker.cri.type eq '2'?'selected':''}"/>>部署コード</option>
						<option value="3" <c:out value="${pageMaker.cri.type eq '3'?'selected':''}"/>>承認コード</option>
						<option value="4" <c:out value="${pageMaker.cri.type eq '4'?'selected':''}"/>>職級コード</option>
						<option value="5" <c:out value="${pageMaker.cri.type eq '5'?'selected':''}"/>>事務内容コード</option>
						<option value="6" <c:out value="${pageMaker.cri.type eq '6'?'selected':''}"/>>休暇コード</option>
					</select>
				</div>
				<div class="col-sm-9 text-right mb-3">
					<button type="button" class="btn btn-warning" onClick="select()">照会</button>
					<button type="button" class="btn btn-primary" onClick="openPop()">登録</button>
					<button type="button" class="btn btn-danger" onClick="deleteCode()">削除</button>
				</div>
			</div>
			
					<table class="table table-striped table-hover">
						<thead class="thead-dark">
							<tr>
								<th><input type="checkbox" name="selectall" value="selectall" onclick='selectAll(this)'></th>
								<th>コード</th>
								<th>コード名</th>
								<th></th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${list != null }">
								<c:forEach var="list" items="${list }">
									<tr>
										<td><input type="checkbox" name="commoncode" value="${list.code}" onclick='checkSelectAll()'/></td>
										<td>${list.code }</td>
										<td>${list.codename }</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
		<!-- </form> -->
		<div class="paging">
				<c:if test="${pageMaker.prev}">
					<a href="${pageMaker.startPage - 1}">
					<i class="fa fa-angle-double-left"></i></a>
				</c:if>
				<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					<a href="${num}">${num}</a>
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<a href="${pageMaker.endPage + 1}">
					<i class="fa fa-angle-double-right"></i></a>
				</c:if>
			</div>
	</div>
	<form id="actionForm" action="/commonCode" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="type" value="${pageMaker.cri.type}">
	</form>
	<div class="jumbotron text-center mb-0 mt-5">
		<p>Footer</p>
	</div>

</body>
</html>
