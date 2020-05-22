$(function() {
	$("#DATETIME").datepicker({
		dateFormat : "yy/mm/dd",
		showMonthAfterYear : true,
		changeYear : true,
		changeMonth : true
	});

	$("#startDate").datepicker({
		dateFormat : "yy/mm/dd",
		showMonthAfterYear : true,
		changeYear : true,
		changeMonth : true,
		onSelect: 
			function dateSE() {
			var end = $("#endDate");
			var startDate = $(this).datepicker('getDate');
			end.datepicker('option', 'minDate', startDate);
		}
	});
	
	$("#endDate").datepicker({
		dateFormat : "yy/mm/dd",
		showMonthAfterYear : true,
		changeYear : true,
		changeMonth : true,
		onSelect: 
			function dateSE() {
			var start = $("#startDate");
			var endDate = $(this).datepicker('getDate');
			start.datepicker('option', 'maxDate', endDate);
		}
	});
});

function dateSE() {
	var start = $("#startDate");
	var end = $("#endDate");
	var startDate = start.datepicker('getDate');
	var endDate = end.datepicker('getDate');
	start.datepicker('option', 'maxDate', endDate);
	end.datepicker('option', 'minDate', startDate);
}

$(function() {
	$("#alert-success").hide();
	$("#alert-danger").hide();
	$("input").keyup(function() {
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		if (pwd1 != "" || pwd2 != "") {
			if (pwd1 == pwd2) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#submit").removeAttr("disabled");
			} else {
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#submit").attr("disabled", "disabled");
			}
		}
	});
});