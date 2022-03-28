<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>
	<input type="text" id="testName">
	<input type="text" id="testAddress">
	<button type="button" id="btn">전송</button>
	
<script>
$(document).ready(function() {
	$('#btn').on('click', function() {
		let testName = $('#testName').val();
		let testAddress = $('#testAddress').val();
		
		$.ajax({
			url:"/test5_request"
			,data: {"test_name":testName, "test_address":testAddress}
			,success: function(data) {
				alert("성공");
			}
			, error: function(e) {
				alert("실패");
			}
		});
	});
});
</script>
</body>
</html>