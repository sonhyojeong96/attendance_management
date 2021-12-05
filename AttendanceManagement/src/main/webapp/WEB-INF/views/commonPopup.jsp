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
<script type="text/javascript" src="/static/js/commonCode.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="/static/js/Calendar.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
</head>

<body>
	<!--▼▼▼ヘッダ▼▼▼-->
	<div class="jumbotron text-center mb-0">
		<h1>共通コード</h1>
	</div>
	<!--▲▲▲ヘッダ▲▲▲-->

	<!--▼▼▼ボタンはこの行に記述してください。▼▼▼-->
	<div class="container text-center">
	<form name="codeForm" id="codeForm" method="post" action="insertCommon">
		<div class="row">
			<div class="col-md-7 col-sm-12">
			
				<table class="table table-striped table-hover mb-5">
					<colgroup>
						<col width="40%">
					</colgroup>
					<tbody class="table-striped2">
						<tr>
							<th>コード</th>
							<td><input type="text" name="code" id="code"
								class="form-control"></td>
						</tr>
						<tr>
							<th>コード名</th>
							<td><input type="text" name="codename" id="codename"
								class="form-control"></td>
						</tr>
					</tbody>
				</table>
			
				<button type="button" class="btn btn-primary btn-block btn-lg mb-5 common_btn"
					onClick="insert()">追加</button>
				<button type="button" class="btn btn-success btn-lg mb-5 common_btn"
					onClick="modification()">修正</button>
			
			</div>
		</div>
		</form>	
	</div>
	<!--▲▲▲ボディ▲▲▲-->
</body>
</html>

