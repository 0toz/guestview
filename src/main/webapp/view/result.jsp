<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// <form action="result.jsp" method="post" enctype="multipart/form-data">를 사용하면
	// request 사용할 수 없다. 파라미터값이 null 이다.
	// cos.jar  안에 존재하는 MultipartRequest 클래스를 사용해야 된다.
	// String name = request.getParameter("name");
	// System.out.println("name : " + name);
	
	// cos.jar안에 있는 MultipartRequest 클래스의 주요 메소드 
	// - getParameter(String) : String 
    // - getparameterValeus(String) : String[]
       		
    //  String 인자는 input type="file" name ="name"  		
    // - getOriginalFileName(String) : 업로드 당시의 파일이름
    // - getFilesystemName(String) : 저장 당시의 파일이름
    // - getContentType(String) : 해당 문서의 종류
    
    // - getFile(String) : 업로드된 파일을 FileClass 객체로 변경해서 처리하자 
    //      - .getName() : 파일 이름
    //      - .length()  : 파일 크기를 byte 처리 
    //      - .lastModified : 마지막수정날짜
    
    // 1. 실제 파일이 저장될 위치를 구하자 (톰켓안에 프로젝트안에 위치)
    String path = getServletContext().getRealPath("/upload");
	
	// 2. MultipartRequest 객체 생성
	MultipartRequest mr =
		new MultipartRequest(
				request,         // 요청정보
				path,            // 저장위치
				100*1024*1024,   // 업로드 용량(100MB)
				"utf-8",         // 인코딩
				new DefaultFileRenamePolicy()); // 파일이름 중복 처리
%>    



