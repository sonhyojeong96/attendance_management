<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date Today = new Date();
	SimpleDateFormat Format = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE html>
<head>
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
<script type="text/javascript" src="/static/js/Time.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/static/js/Calendar.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/static/css/style.css">
</head>

<body>
	<!--▼▼▼ヘッダ▼▼▼-->
	<div class="jumbotron text-center mb-0">
		<h1>勤怠時間</h1>
	</div>
	<!--▲▲▲ヘッダ▲▲▲-->

	<!--▼▼▼ボタンはこの行に記述してください。▼▼▼-->
	<div class="container text-center">
		<div class="row">
			<div class="col-md-7 col-sm-12">
				<table class="table table-striped table-hover mb-5"
					id="table table-striped table-hover mb-5">
					<colgroup>
						<col width="40%">
					</colgroup>
					<tbody class="table-striped2">
						<tr>
							<th>出勤時間</th>
							<td><c:choose>
									<c:when test="${list.attendTime eq null}">
										<p>出勤記録がありません。
									</c:when>
									<c:otherwise>
										<fmt:formatDate pattern="HH:mm" value="${list.attendTime}" />
									</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<th>退勤時間</th>
							<td><c:choose>
									<c:when test="${list.leaveTime eq null}">
										<p>退勤記録がありません。
									</c:when>
									<c:otherwise>
										<fmt:formatDate pattern="HH:mm" value="${list.leaveTime}" />
									</c:otherwise>
								</c:choose>
						</tr>
						<tr>
							<th>業務内容</th>
							<td><c:choose>
									<c:when test="${list.busindescCode eq '2001'}">
										<p>社内勤務</p>
									</c:when>
									<c:when test="${list.busindescCode eq '2002'}">
										<p>派遣勤務</p>
									</c:when>
									<c:otherwise>
										<p>その他</p>
									</c:otherwise>
								</c:choose>
						</tr>
					</tbody>
				</table>
				<button type="button" class="btn btn-primary btn-block btn-lg mb-5"
					onClick="modification()">修正</button>
				<table class="table table-striped table-hover mb-5">
					<colgroup>
						<col width="40%">
					</colgroup>
					<tbody class="table-striped2">
						<tr>
							<th>修正する日付
							<td><input type="text" name="modificationDate"
								id="modificationDate" class="form-control" value="${Date} "
								readonly></td>
							</th>
						</tr>
						<tr>
							<th>出勤時間</th>
							<td><input type="text" name="start" id="start"
								class="form-control" title="00:00:00の形式で書いてください。"></td>
						</tr>
						<tr>
							<th>退勤時間</th>
							<td><input type="text" name="end" id="end"
								class="form-control" title="00:00:00の形式で書いてください。"></td>
						</tr>
						<tr>
							<th>業務内容</th>
							<td><select name="modificationClass">
									<option value="">-- 選択してください --</option>
									<option value="2001">社内勤務</option>
									<option value="2002">派遣勤務</option>
									<option value="2003">その他</option>
							</select>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!--▲▲▲ボディ▲▲▲-->
</body>
</html>

