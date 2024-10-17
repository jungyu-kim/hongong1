boardForm.jsp<%@page import="com.yedam.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"></jsp:include> 
<h3>수정화면(modifyForm.jsp)</h3>

<%
	String msg = (String) request.getAttribute("msg");
	BoardVO board = (BoardVO) request.getAttribute("boardvo");
%>

<%if (msg != null){ %>
<p style="color : red;"><%=msg %></p>
<%}%>
<p>
<form action="addBoard.do" method="post">
	<table class"table">
	<tr>
		<th>제목</th><td><input class="form-control"  type="text" name="title"></td>
	</tr>
	<tr>
		<th>내용</th><td><textarea class="form-control" name = "content" rows="3" cols="30"></textarea></td>
	</tr>
	<tr>
		<th>작성자</th><td><input class="form-control" type="text" name="writer"></td>
	</table>
	<tr>
		<td colspan="2" align = "center">
		<input type ="submit" value="저장"  class="btn btn-outline-success">
		<input type ="reset" value="취소"  class="btn btn-outline-warning">
		</td>
	</tr>
</form>

<jsp:include page="../includes/footer.jsp"></jsp:include> 