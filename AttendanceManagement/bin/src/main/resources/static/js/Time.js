$(function() {
	$(document).tooltip();
});
function attTime() {
	var currentDate = new Date();
	var attClock = document.getElementById("attClock");

	var msg = currentDate.getFullYear() + "-"
	msg += (currentDate.getMonth() + 1) + "-";
	msg += currentDate.getDate() + " ";
	msg += currentDate.getHours() + ":";
	msg += currentDate.getMinutes() + ":";
	msg += currentDate.getSeconds();
	attClock.innerText = msg;

	$.ajax({
		url : "time.att",
		data : "clock=" + attClock.textContent,
		type : "POST",
		success : function(data) {
			alert("入力しました。")
		},
		error : function() {
			alert("エラー")
		}
	});
	msg = currentDate.getHours() + ":"
	msg += currentDate.getMinutes() + ":";
	msg += currentDate.getSeconds();
	attClock.innerText = msg;
	location.href = '/attInsertView';
}
function leaTime() {
	var currentDate = new Date();
	var leaClock = document.getElementById("leaClock");

	var msg = currentDate.getFullYear() + "-"
	msg += (currentDate.getMonth() + 1) + "-";
	msg += currentDate.getDate() + " ";
	msg += currentDate.getHours() + ":";
	msg += currentDate.getMinutes() + ":";
	msg += currentDate.getSeconds();
	leaClock.innerText = msg;

	$.ajax({
		url : "time.lea",
		data : "clock=" + leaClock.textContent,
		type : "POST",
		success : function(data) {
			alert("入力しました。")
		}
	});
	msg = currentDate.getHours() + ":"
	msg += currentDate.getMinutes() + ":";
	msg += currentDate.getSeconds();
	leaClock.innerText = msg;
}
function submit() {
	var value = $("select[name=content]").val();
	if (value == 0) {
		window.alert("業務内容を選択してください。");
	}
	$.ajax({
		type : "POST",
		url : "work.details",
		data : "submit=" + value,
		success : function(data) {
			alert("入力しました。")
		},
		error : function() {
			alert("エラー")
		}
	});
}
function modification() {
	var date = $("#modificationDate").val();
	var start = $("#start").val();
	var end = $("#end").val();
	var value = $("select[name=modificationClass]").val();
	if (start == "") {
		start = "Pass";
	}
	if (end == "") {
		end = "Pass";
	}
	if (value == "") {
		value = "Pass";
	}
	const str = [ date, start, end, value ].join();
	$.ajax({
		type : "POST",
		url : "modification",
		data : "data=" + str,
		success : function(data) {
			alert("入力しました。")
		},
		error : function() {
			alert("エラー")
		}
	});
	location.href = '/timePopup';
}
$(function() {
	$("#datepicker")
			.datepicker(
					{
						dateFormat : 'yy-mm-dd ' // Input Display Format 변경
						,
						showOtherMonths : true // 빈 공간에 현재월의 앞뒤월의 날짜를 표시
						,
						showMonthAfterYear : true // 년도 먼저 나오고, 뒤에 월 표시
						,
						yearSuffix : "年" // 달력의 년도 부분 뒤에 붙는 텍스트
						,
						monthNamesShort : [ '1', '2', '3', '4', '5', '6', '7',
								'8', '9', '10', '11', '12' ] // 달력의 월 부분 텍스트
						,
						monthNames : [ '1月', '2月', '3月', '4月', '5月', '6月',
								'7月', '8月', '9月', '10月', '11月', '12月' ] // 달력의 월
						// 부분
						// Tooltip
						// 텍스트
						,
						dayNamesMin : [ '日', '月', '火', '水', '木', '金', '土' ],
						dayNames : [ '日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日',
								'土曜日' ],
						altField : '#start',
						onSelect : function(dateText) {
							$
									.ajax({
										type : "GET",
										url : "time.bring",
										data : "dateText=" + dateText,
										async : false,
										success : function() {
											var url = "/timePopup";
											var name = "popup test";
											var option = "width = 500, height = 1000, top = 100, left = 600, location = no"
											window.open(url, name, option);
										},
										error : function() {
											alert("エラー")
										}
									});
						}
					});
});
function errMag() {
	var url = "/timePopup";
	var name = "popup test";
	var option = "width = 500, height = 500, top = 100, left = 600, location = no"
	window.open(url, name, option);
	alert("出勤からしてください。");
}
