<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="../includes/header.jsp"></jsp:include>

 <form action="memberAdd.do">
 	<table class="table">
 	 <tr>
 	  <td>회원ID</td><td><input type="text" name="mid"></td>
 	  </tr>
 	  <tr>
 	  <td>회원이름</td><td><input type="text" name="mname"></td>
 	  </tr>
 	  <tr>
 	  <td>비밀번호</td><td><input type="password" name="passwd"></td>
 	  </tr>
 	  <tr>
 	  <td>연락처</td><td><input type="text" name="phone"></td>
 	  </tr>
 	   <tr>
 	  <td colspan='2' align="center"><input type="submit" value="저장" class = "btn primary"></td>
 	  </tr> 	  
 	</table>
 </form>
 
<jsp:include page="../includes/footer.jsp"></jsp:include>