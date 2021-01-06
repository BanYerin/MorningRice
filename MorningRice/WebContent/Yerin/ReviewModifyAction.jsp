<!-- 
만든이: 2017038023 반예린
해당 소스파일 정보: 게시글 수정기능.
			 DB를 이용한 게시글 수정기능 -> 수정하려는 게시글의 게시글번호에 해당하는 레코드를 추출하여 해당 레코드의 비밀번호와 수정폼에 입력받은 비밀번호를 비교하고,
			 비밀번호가 일치하면 게시글 수정폼으로 부터 받아온 값들을 이용하여 게시글 수정(해당 DB레코드 수정)을 진행하고 비밀번호가 틀리면 알림창 출력후 이전페이지로 되돌아감
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD MODIFY ACTION</title>
</head>
<body>
<%
request.setCharacterEncoding("euc-kr");
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null ) {//게시글번호가 null이거나 게시글 수정폼에 입력받은 비밀번호가 null일 경우
	//알림창 출력후 이전페이지로 돌아감
	out.println("<script>try{alert('존재하지 않는 게시글이거나 비밀번호를 입력하지 않았습니다!'); history.back();}catch(e){alert(e);}</script>");
	out.flush();//버퍼 비워줌
} else {//게시글 번호 및 게시글 수정폼에 입력받은 비밀번호가 null이 아닐경우
	//게시글 수정폼으로부터 전달받은 각 값들을 각 변수에 넣음
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardModifyAction param boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardModifyAction param boardPw :"+boardPw);
    String boardTitle = request.getParameter("boardTitle");
    System.out.println("boardModifyAction param boardTitle :"+boardTitle);
    String boardContent = request.getParameter("boardContent");
    System.out.println("boardModifyAction param boardContent :"+boardContent);
    
 	//DB연결을 위한 설정
    String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
    String dbUser = "MorningRice";
    String dbPw = "jsp123123123";
    Connection connection = null;
    PreparedStatement statement = null;
    Statement stmt=null;
    ResultSet rs=null;
    String DBpw=null; //수정할 게시글에 해당하는 DB레코드로부터 비밀번호를 가져와 넣을 변수
    
    try {
    	//DB연결 작업
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        System.out.println("DB연결완료");
        
        	//현재 수정하려는 게시글의 게시글번호에 해당하는 레코드를 테이블로부터 추출하여 board_pw를 가져와 DBpw에 넣음
			stmt = connection.createStatement();
			rs=stmt.executeQuery("SELECT * FROM review_board WHERE board_no="+boardNo);
			while(rs.next()){//결과객체에 정보가 존재하는동안 반복
			DBpw=rs.getString("board_pw");
			}
			
			if(boardPw.equals(DBpw)){//수정폼에서 입력한 비밀번호와 해당 게시글에 대한 DB레코드상의 비밀번호가 일치하면 수정한 게시글 정보를 해당 레코드에 반영
            String selectSql = "UPDATE review_board SET board_title=?, board_content=? WHERE board_no=? AND board_pw=?";
            statement = connection.prepareStatement(selectSql);
            statement.setString(1, boardTitle);
            statement.setString(2, boardContent);
            statement.setInt(3, boardNo);
            statement.setString(4, boardPw);
            statement.executeUpdate();
            response.sendRedirect(request.getContextPath()+"/Yerin/ReviewView.jsp?boardNo="+boardNo);
			}else{//수정폼에서 입력한 비밀번호와 해당 게시글에 대한 DB레코드상의 비밀번호가 틀리면 알림창 출력하고 이전페이지로 돌아감
				out.println("<script>try{alert('비밀번호가 틀립니다!'); history.back();}catch(e){alert(e);}</script>");
	       		out.flush(); out.flush();//버퍼 비워줌
			}          
      
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD MODIFY ACTION ERROR! 데이터베이스 상태를 확인하세요!");
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
</body>
</html>
