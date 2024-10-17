<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.yedam.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../includes/header.jsp"></jsp:include> 
<h3>상세페이지</h3>

<%
   List<BoardVO> list = (List<BoardVO>) request.getAttribute("board");
   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>


<table class="table">
	<tr>
		<th>글번호</th><td>13</td><td>조회수</td>
	</tr>
	<tr>
		<th>제목</th><td colspan='3'>
	</tr>
	<tr>
		<th>내용</th><td colspan='3'>
	</tr>
	<tr>
		<th>작성자</th><td colspan='3'>
	</tr>
	<tr>
		<th>작성일시</th><td colspan='3'>
	</tr>
	
	<tbody>
	<%for (BoardVO board : list){
		String hdate = sdf.format(board.getWriteDate());
		
	%>	
	<tr>
		<td><%=board.getTitle() %></td>
		<td><%=board.getContent() %></td>
		<td><%=board.getWriter() %></td>
		<td><%=hdate %></td>
	</tr>	
	<%} %>	
	</tbody>
		
</table>

<jsp:include page="../includes/footer.jsp"></jsp:include> 

<script>
	document.querySelector('input[value="수정"]').
	addEventListener('click', function(e)) {
	location.href='modifyBoard.do'?bno=<%=board.getBoardNo() %>';		
	});
</script>