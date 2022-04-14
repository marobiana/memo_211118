<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <!-- AJAX를 사용하기 위해 slim 아닌 풀버전의 jquery로 교체 -->
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
  <link rel="stylesheet" type="text/css" href="/static/css/style.css">
</head>
</head>
<body>
<div class="ml-3">

	<h5 id="planSub" class="ml-1">여행일정</h5>
	
	<div id="dateBox" class="d-flex justify-content-between mb-3">
	
		<div class="d-flex">
			<img src="/static/icons/schedule_white.png" width="30px" height="30px" class="m-1">
			<!--  날짜 형식대로 바꾸기 -->
			<div class="d-flex font-weight-bold mt-2 ml-2 text-white">
				<div>시작날짜</div>
				<div class="mx-2">~</div>
				<div>끝날짜</div>
			</div>
		</div>
		<!-- 일정 총합의 비용을 넣어준다. -->
		<div class="mt-2 mr-5 font-weight-bold text-white">￦500,000</div>
	</div>
	
	<div class="mt-4 ml-2">
			<div class="d-flex ">
			
				<!-- TODO: 날짜 형식 바꾸기!! -->
				<div class="font-weight-bold  mt-1 ml-2">날짜들</div>
				
				<a href="#" data-toggle="modal" class="moreBtn" data-target="#MoreModal">
					<input type="text" class="title form-control ml-2" placeholder="제목">
				</a>
			</div>
			
			<div><!-- 리스트가져오기 -->
			
			
			</div>
			
			<div class="planBox mt-3 d-flex justify-content-end ml-1">
				<a href="/plan/create_view?travelId=1&date=2" class="mr-3 mt-1">
					<img src="/static/icons/plus_red.png" width="30px">
				</a>
			</div>
			<hr>
			<div class="resultBox d-flex justify-content-end mb-4 ml-1">
				<div class="mt-2 mr-4 font-weight-bold">￦500,000</div>
			</div>
	</div>	
</div>

<!-- Modal -->
<div class="modal fade" id="MoreModal">
	<div class="modal-dialog  modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="d-flex justify-content-end mt-3 mr-3">
				<a href="#" class="cancel d-bolok" data-dismiss="modal">
					<img alt="삭제" src="/static/icons/x.png" width="20px" height="20px"> 
				</a>				
			</div>
			
			<div class="modalInput d-flex justify-content-center mt-5">
				<input type="text" id="modalTitle" name="modalTitile" class="form-control col-10" placeholder="제목">
			</div>
			<div class="d-flex justify-content-end mr-5 my-4">
				<button id="modalSaveBtn" class="btn btn-info">저장</button>
			</div>
		</div>
	</div>
</div>

 <script>
 $(document).ready(function() {
	 
 	  $('.moreBtn').on('click', function(e) {
		 e.preventDefault();
		 
		 let date = $(this).data('date');
		 
		 console.log(date);
		 
		 $('#MoreModal').data('date', date);
	 }); 
	 
	 $('#MoreModal #modalSaveBtn').on('click', function() {
		 
		//let date = $('#MoreModal').id('date');
		// console.log(date);
		 
		let title = $('#modalTitle').val();
		alert(title);
		let modalTitle = $('.modal-content #modalTitle').val();
		
		alert(modalTitle);
		
		
	 }); 
	 
 /*  		 부모창의 데이터를 가져오는것!! 
		$('.moreBtn').on('click', function() {
		 let title = $('#modalTitle').val($(this).data('date'));
		 $('#MoreModal').modal('show');
		 
	 });  */
	
 });
 
 </script>
 
 </body>
 </html>