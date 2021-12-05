<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>個人休暇申請</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- HolidayApply.js -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript" src="/static/js/HolidayApply.js"></script>
</head>
<body>
	<div class="jumbotron text-center mb-0">
		<h1>個人休暇申請</h1>
	</div>
	<nav class="navbar navbar-expand-sm bg-danger navbar-dark mb-5">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="/休日管理(月)">休日管理(月)</a></li>
			<li class="nav-item"><a class="nav-link" href="/共通コード">共通コード</a></li>
			<li class="nav-item"><a class="nav-link" href="/職員管理">職員管理</a></li>
			<li class="nav-item"><a class="nav-link" href="attSelect">職員勤務照会</a></li>
			<li class="nav-item"><a class="nav-link" href="/attInsertView">勤務登録</a></li>
			<li class="nav-item"><a class="nav-link" href="/holidayApply">個人休暇申請</a></li>
			<li class="nav-item active"><a class="nav-link" href="/個人休暇(代表)">個人休暇(代表)</a></li>
			<li class="nav-item"><a class="nav-link" href="/社員業務指示">社員業務指示</a></li>
		</ul>
	</nav>

	<div class="container text-center">
		<form name="holidayForm" id="holidayForm" method="post" action="holidayInsert">
			<div class="row">
				<div class="col-sm-2 text-left">
					<select name="year" class="custom-select">
						<option value="" <c:if test="${year == null }">selected</c:if>>year</option>
						<option value="2021" <c:if test="${year == 2021}">selected</c:if>>2021</option>
						<option value="2020" <c:if test="${year == 2020}">selected</c:if>>2020</option>
						<option value="2019" <c:if test="${year == 2019}">selected</c:if>>2019</option>
					</select>
				</div>
				<div class="col-sm-1.5 text-left">
					<select name="month" class="custom-select">
						<option value="all" <c:if test="${month == null }">selected</c:if>>month</option>
						<option value="01" <c:if test="${month == 01}">selected</c:if>>1</option>
						<option value="02" <c:if test="${month == 02}">selected</c:if>>2</option>
						<option value="03" <c:if test="${month == 03}">selected</c:if>>3</option>
					</select>
				</div>
				<div class="col-sm-9 text-right mb-3">
					<button type="button" class="btn btn-warning" onClick="selectForm()">照会</button>
					<button type="button" class="btn btn-primary" onClick="insertForm()">追加</button>
					<button type="button" class="btn btn-danger" onClick="deleteForm()">削除</button>
					<button type="button" class="btn btn-success" onClick="saveForm()">保存</button>
				</div>
			</div>

			<table class="table table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th><input type='checkbox' name='selectall' value='selectall' onclick='selectAll(this)'/></th>
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
						<td></td>
						<td>
							<input type="text" name="seriesNum" id="seriesNum" class="form-control" value="${seriesNum + 1}" readonly>
						</td>
						<td>
							<input type="hidden" name="employeeId" id="employeeId" class="form-control" value="${employeeId}">
							<input type="text" name="employeeName" id="employeeName" class="form-control" value="${employeeName}" readonly>
						</td>
						<td>
							<select name="yearTimeCode" id="yearTimeCode" class="form-control" onchange="categoryChange(this)" style="width:115px;">
								<option value="" >選択</option>
								<c:forEach var="type" items="${type }">
									<option value="${type.code }" >${type.codeName }</option>
								</c:forEach>
							</select>
						</td>
						<td>
							<input type="text" name="fromDate" id="fromDate" class="form-control" value="">
						</td>
						<td>
							<input type="text" name="toDate" id="toDate" class="form-control" value="">
						</td>
						<td>
							<select name="grounds" id="grounds" class="form-control" style="width:115px;">
								<option value="" ></option>
							</select>
						</td>
						<td>
							<input type="text" name="days" id="days" class="form-control" value="" readonly>
						</td>
						<td>
							<input type="text" class="form-control" value="申請" readonly>
						</td>
					</tr>
					<!-- empyearfreetimeテーブルのリスト出力 -->
					<c:if test="${list != null }">
						<c:forEach var="list" items="${list }">
							<tr>
								<td>
									<input type="checkbox" name="holiday" value="${list.seriesNum }" onclick='checkSelectAll()'/>
								</td>
								<td>${list.seriesNum }</td>
								<td>${list.employeeName }</td>
								<td>${list.codeName }</td>
								<!-- timestamp型のデータを希望する形式で出力 -->
								<td>${list.fromDate.substring(0, 10)}</td>
								<td>${list.toDate.substring(0, 10) }</td>
								<td>${list.grounds }</td>
								<td>${list.days }</td>
								<td>
									<c:if test="${list.approvalCode == 0 }">待機</c:if>
									<c:if test="${list.approvalCode == 1 }">承認</c:if>
									<c:if test="${list.approvalCode == 2 }">拒否</c:if>
								</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</form>
	</div>
	<div class="jumbotron text-center mb-0 mt-5">
		<p>Footer</p>
	</div>
</body>
</html>