<!-- 
������: 2017038023 �ݿ���
�ش� �ҽ����� ����: �Խñ� ��ϱ��.
			 DB�� �̿��� �Խñ� ��ϱ�� -> �Խñ� �ۼ� ������ ���� �޾ƿ� ����(�Խñ��� ����, ����, �ۼ���(�г���), ��й�ȣ)�� DB���̺� ���ڵ�� ������
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
//�Խñ� �ۼ������κ��� ���޹��� �� ������ �� ������ ����
String boardPw = request.getParameter("boardPw");
System.out.println("param boardPw:"+boardPw);
String boardTitle = request.getParameter("boardTitle");
System.out.println("param boardTitle:"+boardTitle);
String boardContent = request.getParameter("boardContent");
System.out.println("param boardContent:"+boardContent);
String boardUser = request.getParameter("boardUser");
System.out.println("param boardUser:"+boardUser);
 
//DB������ ���� ����
String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
String dbUser = "MorningRice";
String dbPw = "jsp123123123";
Connection connection = null;
PreparedStatement statement = null;
try {
	//DB���� �۾�
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    System.out.println("DB����Ϸ�");   
    
    //�ۼ��� �Խñ� ������ DB���̺� ���ڵ�ν� �߰�. �ۼ����� ���� ��¥�� �߰�
    String sql = "INSERT INTO qa_board(board_pw, board_title, board_content, board_user, board_date) values(?,?,?,?,now())";
    statement = connection.prepareStatement(sql);
    statement.setString(1,boardPw);
    statement.setString(2,boardTitle);
    statement.setString(3,boardContent);
    statement.setString(4,boardUser);
    statement.executeUpdate();
    System.out.println("�ۼ��� �� �����͸� DB�� �߰� �Ϸ�"); 
    
  response.sendRedirect(request.getContextPath()+"/Yerin/Q&AList.jsp"); //�Խñ� ����� �Խñ� ������� �̵�
} catch(Exception e) {
    e.printStackTrace();
    out.print("BOARD ADD ACTION ERROR! �����ͺ��̽� ���¸� Ȯ���ϼ���!");
} finally {
    try {statement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>
</body>
</html>
