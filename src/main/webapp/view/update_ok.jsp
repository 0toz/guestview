<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.ict.db.DAO"%> 
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

   String path =request.getServletContext().getRealPath("/upload");
   MultipartRequest mr =  new MultipartRequest(request, path, 100*1024*1024,"utf-8", new DefaultFileRenamePolicy());
	
   
	VO vo = new VO();
	  vo.setIdx(mr.getParameter("idx"));
	vo.setName(mr.getParameter("name"));
	vo.setSubject(mr.getParameter("subject"));
	vo.setContent(mr.getParameter("content"));
	vo.setEmail(mr.getParameter("email"));
	vo.setPwd(mr.getParameter("pwd"));
	String f_name2 = mr.getParameter("f_name2");
		
	  
	  
	  if(mr.getFile("f_name")==null){
		  vo.setF_name(f_name2);
	  }else{
		  vo.setF_name(mr.getParameter("f_name"));
	  }
	 
	  int result = DAO.getInstance().getInsert(vo);
	  if(result>0){
		  response.sendRedirect("onelist.jsp?idx="+vo.getIdx());
	  }
   
   

%>