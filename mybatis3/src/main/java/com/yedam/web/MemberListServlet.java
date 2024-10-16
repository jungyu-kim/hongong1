package com.yedam.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.dao.MemberMapper;
import com.yedam.vo.Member;

@WebServlet("/MemberListServlet")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MemberListServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");

		PrintWriter out = resp.getWriter();

		SqlSession sqlSession = DataSource.getInstance().openSession(true);
		MemberMapper dao = sqlSession.getMapper(MemberMapper.class);

		List<Member> result = dao.members();
		String str = "";
		str += "<h3>회원목록</h3>";
		str += "<table border='1'>";
		str += "<thead><tr><th>회원아이디/th><th>회원명</th><th>연락처</th></tr></thead>";
		str += "<tbody>";

		for (Member member1 : result) {
			str += "<tr><th><a href='member.action?mid= " + member1.getMemberId() + "'>" + member1.getMemberId()
					+ "</a></th><td>" + member1.getMemberName() + "</th><td>" + member1.getPhone() + "</td></tr>";

		}
		str += "</tbody>";
		str += "</table>";
		str += "<a href='./>첫페이지</a>";
		out.print(str);

	}
}
