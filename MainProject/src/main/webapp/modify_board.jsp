<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="HTML Study">
		<meta name="keywords" content="HTML,CSS,XML,JavaScript">
		<meta name="author" content="June">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/common.css" type="text/css">
		<link rel="stylesheet" href="css/reset.css" type="text/css">
		<link rel="stylesheet" href="css/sub.css" type="text/css">
		<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR:300,400,500,700,900&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">
		<title>Insert title here</title>
	</head>
	<body>
		<%@include file="header.jsp" %>
		<form class="inquiry_form" name="boardForm" action="modifyBoard.do" method="post" onsubmit="return checkBoard()">
		<div id="edit_wrap">
			<h2><span>EveryAir</span></h2>
			<table>
				<colgroup>
					<col width="7%">
					<col width="93%">
				</colgroup>
				<tr>
					<td>제목<span class="form_red">*</span></td>
					<td><input style="width:100%" type="text" name="title" id="title" value="${dto.title}"/></td>
				</tr>
			</table>
			<textarea rows="15" cols="100" name="contents" id="contents" placeholder="문의 내용을 입력하세요.">${dto.contents}</textarea>
			
		</div>
		<div class="wrapper">
			<div class="edit_btn">
				<a class="w_btn" href="selectBoard.do?no=${dto.no}&pageNo=${param.pageNo}&status=view">돌아가기</a>
				<input type="hidden" value="${dto.no}" name="no">
				<input type="hidden" value="${param.pageNo}" name="pageNo">
				<input class="b_btn" type="submit" value="수정하기">
			</div>
		</div>
		</form>
		<script src="js/checkInfo.js"> </script>
	</body>
</html>