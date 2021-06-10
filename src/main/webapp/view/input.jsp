<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	파일 업/다운 로드 하기 
	1. 라이브러리 받기 : http://www.servlets.com
	2. 라이브러리 압출 풀어서 WEB-INF 안에 lib 폴더에 cos.jas 넣어주기
	3. 반드시 <form method="post" enctype="multipart/form-data"> 설정
	4. 저장할 폴더를 만들어 놓는다.(실제 저장되는 장소는 c:\~~~ 가 아니라 톰켓에 존재하는 프로젝트 위치안에 저장)
 --%>
  <form action="result.jsp" method="post" enctype="multipart/form-data">
  		<p> 올린사람 : <input type="text" name="name"></p>
  		<p> 첨부파일 : <input type="file" name="f_name"></p>
  		<input type="submit" value="업로드" >
  </form>
</body>
</html>