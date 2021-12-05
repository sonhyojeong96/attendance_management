
/* 共通マスター ポップアップ表示 */
function openPop(){
	var url = "/commonPopup";
	var name = "commonCode";
	var option = "width = 500, height = 1000, top = 100, left = 600, location = no"
	window.open(url, name, option);
}

/* 共通マスターコード挿入 */
function insert() {
	
	var code = $("#code").val();
	var codename = $("#codename").val();
	if(code==""){
		alert("コードを入力してください。");
		$("#code").focus();
		return;
	}
	const str = [code, codename].join();
	$.ajax({
		type:"POST",
		url:"insertCommon",
		data:"data=" + str,
		success:function(data){
			alert("入力しました。");
			opener.parent.location.reload();
			window.close();
		},
		error:function(){
			alert("エラー")
		},
	});
	location.href="/commonCode";
}

/*	共通マスタータイプ別検索 */
function select(){

	var type = $("select[name=type]").val();
	
	if(type==""){
		alert("コードタイプを選択してください。");
		$("select[name=type]").focus();
		return false;
	}
	
	$("#actionForm").find("input[name='type']").val(type);
	$("#actionForm").find("input[name='pageNum']").val(1);
	$("#actionForm").submit();
}

/*	ページ番号選択 */
$(function(){
	$(".paging a").on("click", function(e){
	e.preventDefault();
	$("#actionForm").find("input[name='pageNum']").val($(this).attr("href"));
	$("#actionForm").submit();
	})
});

/*	チェックボックス */ 
function selectAll(selectAll){
	const checkboxes = document.getElementsByName('commoncode');
	checkboxes.forEach((checkbox) => {
		checkbox.checked = selectAll.checked
	})
}

function checkSelectAll(){
	//　全チェックボックス
	const checkboxes = document.querySelectorAll('input[name="commoncode"]');
	//　選択したチェックボックス
	const checked = document.querySelectAll('input[name="commoncode"]:checked');
	//　Select all チェックボックス
	const selectAll = document.querySelector('input[name="selectall"]');
	if(checkboxes.length === checked.length){
		selectAll.checked = true;
	} else {
		selectAll.checked = false;
	}
}

/*	レコード削除 */ 
function deleteCode() {
	
	var checkRow = "";
	$("input[name='commoncode']:checked").each(function() {
		checkRow = checkRow + $(this).val() + ",";
	});
	checkRow = checkRow.substring(0, checkRow.lastIndexOf(","));
	
	if(checkRow == ''){
		alert("削除する対象を選択してください。");
		return false;
	}
	console.log("### checkRow => {}" + checkRow);
	
	if(confirm("情報を削除しますか？")){
		
		location.href="commonCodeDelete?code=" + checkRow;
	}

}

/* 	レコード修正 */ 
function modification(){
	var code = $("#code").val();
	var codename = $("#codename").val();
	if(code == ""){
		code = "Pass";
	}
	if(codename == ""){
		codename = "Pass";
	}
	
	const str = [ code, codename ].join();
	$.ajax({
		type : "POST",
		url : "commonCodeModify",
		data : "data="+ str,
		success:function(data){
			alert("入力しました。");
			opener.parent.location.reload();
			window.close();
		},
		error:function(){
			alert("エラー")
		},
	});
	location.href="/commonCode";
}