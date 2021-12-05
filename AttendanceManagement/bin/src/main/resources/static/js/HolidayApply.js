//休暇リスト選択
function checkSelectAll() {
	// 全チェックボックス
	const checkboxes
		= document.querySelectorAll('input[name="holiday"]');
	// 選択したチェックボックス
	const checked
		= document.querySelectorAll('input[name="holiday"]:checked');
	// select all チェックボックス
	const selectAll
		= document.querySelector('input[name="selectall"]');

	if (checkboxes.length === checked.length) {
		selectAll.checked = true;
	} else {
		selectAll.checked = false;
	}

}

function selectAll(selectAll) {
	const checkboxes
		= document.getElementsByName('holiday');

	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}

//日付選択
$(document).ready(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	$("#fromDate").datepicker({
		changeMonth: true,
		changeYear: true,
		nextText: '来月',
		prevText: '前月',
		dayNames: ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日'],
		dayNamesMin: ['日', '月', '火', '水', '木', '金', '土'],
		monthNamesShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
		monthNames: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
		dateFormat: "yy-mm-dd",
		maxDate: "+14D",
		onClose: function(selectedDate) {
			$("#toDate").datepicker("option", "minDate", selectedDate);
		}

	});
	$("#toDate").datepicker({
		changeMonth: true,
		changeYear: true,
		nextText: '来月',
		prevText: '前月',
		dayNames: ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日'],
		dayNamesMin: ['日', '月', '火', '水', '木', '金', '土'],
		monthNamesShort: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
		monthNames: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
		dateFormat: "yy-mm-dd",
		maxDate: "+24D",
		onClose: function(selectedDate) {
			$("#fromDate").datepicker("option", "maxDate", selectedDate);
		}

	});
})

//休暇削除
function deleteForm() {

	var checkRow = "";
	$("input[name='holiday']:checked").each(function() {
		checkRow = checkRow + $(this).val() + ",";
	});
	checkRow = checkRow.substring(0, checkRow.lastIndexOf(",")); //最後尾コンマ消し

	if (checkRow == '') {
		alert("削除する対象を選択してください。");
		return false;
	}
	console.log("### checkRow => {}" + checkRow);

	if (confirm("情報を削除しますか？")) {

		location.href = "holidayDelete?seriesNum=" + checkRow;
	}

}

//休暇申請
function insertForm() {
	if (holidayForm.yearTimeCode.value == "") {
		alert("休日種類を入力してください。");
		holidayForm.yearTimeCode.focus();
		return;
	}

	if (holidayForm.fromDate.value == "") {
		alert("開始日を入力してください。");
		holidayForm.fromDate.focus();
		return;
	}

	if (holidayForm.toDate.value == "") {
		alert("終了日を入力してください。");
		holidayForm.toDate.focus();
		return;
	}

	if (holidayForm.grounds.value == "") {
		alert("理由を入力してください。");
		holidayForm.grounds.focus();
		return;
	}

	holidayForm.submit();
}

function selectForm(){
	if(holidayForm.year.value == ""){
		alert("年度を選択してください。");
		holidayForm.year.focus();
		return;
	}
	
	holidayForm.action = "holidaySelect";
	holidayForm.submit();
}

function categoryChange(type) {
	var grounds_1001 = ["旅行", "帰国"];
	var grounds_1002 = ["出産", "育児"];
	var grounds_1003 = ["本人結婚", "知人結婚", "知人死亡"];
	var grounds_1004 = ["健康診断", "手術"];
	var grounds_1005 = ["その他"];
	var target = document.getElementById("grounds");

	if(type.value == "1001") var d = grounds_1001;
	else if(type.value == "1002") var d = grounds_1002;
	else if(type.value == "1003") var d = grounds_1003;
	else if(type.value == "1004") var d = grounds_1004;
	else if(type.value == "1005") var d = grounds_1005;

	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}	
}

function saveForm() {
	if (confirm("保存しますか？")) {
		holidayForm.action = "holidaySave";
		holidayForm.submit();
	}
}
