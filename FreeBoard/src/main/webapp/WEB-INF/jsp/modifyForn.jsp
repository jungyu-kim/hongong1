boardForm.jsp<%@page import="com.yedam.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"></jsp:include> 
<h3>등록화면(boardForm.jsp)</h3>

<%
	String msg = (String) request.getAttribute("msg");
	BoardVO board = (BoardVO) request.getAttribute("boardvo"); 
%>

<%if (msg != null){ %>
<p style="color : red;"><%=msg %></p>
<%}%>
<p>
<form action="modifyBoard.do" method="post">
<input type="hidden" name="bno" value="<%=board.getBoardNo() %>">
	<table class"table">
	<tr>
		<th>글번호</th><td><%=board.getBoardNo() %></td>
		<th>글조회</th><td><%=board.getViewCnt() %></td>
		
	</tr>
	<tr>
		<th>제목</th><td><input class="form-control"  type="text" name="title" value="<%=board.getTitle() %>"></td>
	</tr>
	<tr>
		<th>내용</th><td><textarea class="form-control" name = "content" rows="3" cols="30"><%=board.getContent() %></textarea></td>
	</tr>
	<tr>
		<th>작성자</th><td><%=board.getWriter() %></td>
	</table>
	<tr>
		<td colspan="2" align = "center">
		<input type ="submit" value="저장"  class="btn btn-outline-success">
		<input type ="reset" value="취소"  class="btn btn-outline-warning">
		</td>
	</tr>
</form>

<jsp:include page="../includes/footer.jsp"></jsp:include> 