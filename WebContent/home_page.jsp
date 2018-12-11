<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<frameset rows="30%,*" >
	<frame src="<%=request.getContextPath()%>/top.jsp" scrolling="no">
	<frameset cols="20%,*">
	<frame src="<%=request.getContextPath()%>/left.jsp">
	<frame src="<%=request.getContextPath()%>/center.jsp" name="rightjsp">
	</frameset>
	</frameset>
	<noframes></noframes>
</html>