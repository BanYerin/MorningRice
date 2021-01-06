<!-- 
만든이: 2017038023 반예린
해당 소스파일 정보: 게시글 등록기능.
			 DB를 이용한 게시글 등록기능 -> 게시글 작성 폼으로 부터 받아온 값들(게시글의 제목, 내용, 작성자(닉네임), 비밀번호)을 DB테이블에 레코드로 저장함
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD ADD ACTION</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
//게시글 작성폼으로부터 전달받은 각 값들을 각 변수에 넣음
String boardPw = request.getParameter("boardPw");
System.out.println("param boardPw:"+boardPw);
String boardTitle = request.getParameter("boardTitle");
System.out.println("param boardTitle:"+boardTitle);
String boardContent = request.getParameter("boardContent");
System.out.println("param boardContent:"+boardContent);
String boardUser = request.getParameter("boardUser");
System.out.println("param boardUser:"+boardUser);
 
//DB연결을 위한 설정
String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
String dbUser = "MorningRice";
String dbPw = "jsp123123123";
Connection connection = null;
PreparedStatement statement = null;
try {
	//DB연결 작업
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    System.out.println("DB연결완료");   
    
    //작성한 게시글 정보를 DB테이블에 레코드로써 추가. 작성일은 현재 날짜로 추가
    String sql = "INSERT INTO qa_board(board_pw, board_title, board_content, board_user, board_date) values(?,?,?,?,now())";
    statement = connection.prepareStatement(sql);
    statement.setString(1,boardPw);
    statement.setString(2,boardTitle);
    statement.setString(3,boardContent);
    statement.setString(4,boardUser);
    statement.executeUpdate();
    System.out.println("작성한 글 데이터를 DB에 추가 완료"); 
    
  response.sendRedirect(request.getContextPath()+"/Yerin/Q&AList.jsp"); //게시글 등록후 게시글 목록으로 이동
} catch(Exception e) {
    e.printStackTrace();
    out.print("BOARD ADD ACTION ERROR! 데이터베이스 상태를 확인하세요!");
} finally {
    try {statement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>
</body>
</html>
