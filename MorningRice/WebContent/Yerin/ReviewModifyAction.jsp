<!-- 
������: 2017038023 �ݿ���
�ش� �ҽ����� ����: �Խñ� �������.
			 DB�� �̿��� �Խñ� ������� -> �����Ϸ��� �Խñ��� �Խñ۹�ȣ�� �ش��ϴ� ���ڵ带 �����Ͽ� �ش� ���ڵ��� ��й�ȣ�� �������� �Է¹��� ��й�ȣ�� ���ϰ�,
			 ��й�ȣ�� ��ġ�ϸ� �Խñ� ���������� ���� �޾ƿ� ������ �̿��Ͽ� �Խñ� ����(�ش� DB���ڵ� ����)�� �����ϰ� ��й�ȣ�� Ʋ���� �˸�â ����� ������������ �ǵ��ư�
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
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null ) {//�Խñ۹�ȣ�� null�̰ų� �Խñ� �������� �Է¹��� ��й�ȣ�� null�� ���
	//�˸�â ����� ������������ ���ư�
	out.println("<script>try{alert('�������� �ʴ� �Խñ��̰ų� ��й�ȣ�� �Է����� �ʾҽ��ϴ�!'); history.back();}catch(e){alert(e);}</script>");
	out.flush();//���� �����
} else {//�Խñ� ��ȣ �� �Խñ� �������� �Է¹��� ��й�ȣ�� null�� �ƴҰ��
	//�Խñ� ���������κ��� ���޹��� �� ������ �� ������ ����
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardModifyAction param boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardModifyAction param boardPw :"+boardPw);
    String boardTitle = request.getParameter("boardTitle");
    System.out.println("boardModifyAction param boardTitle :"+boardTitle);
    String boardContent = request.getParameter("boardContent");
    System.out.println("boardModifyAction param boardContent :"+boardContent);
    
 	//DB������ ���� ����
    String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
    String dbUser = "MorningRice";
    String dbPw = "jsp123123123";
    Connection connection = null;
    PreparedStatement statement = null;
    Statement stmt=null;
    ResultSet rs=null;
    String DBpw=null; //������ �Խñۿ� �ش��ϴ� DB���ڵ�κ��� ��й�ȣ�� ������ ���� ����
    
    try {
    	//DB���� �۾�
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        System.out.println("DB����Ϸ�");
        
        	//���� �����Ϸ��� �Խñ��� �Խñ۹�ȣ�� �ش��ϴ� ���ڵ带 ���̺�κ��� �����Ͽ� board_pw�� ������ DBpw�� ����
			stmt = connection.createStatement();
			rs=stmt.executeQuery("SELECT * FROM review_board WHERE board_no="+boardNo);
			while(rs.next()){//�����ü�� ������ �����ϴµ��� �ݺ�
			DBpw=rs.getString("board_pw");
			}
			
			if(boardPw.equals(DBpw)){//���������� �Է��� ��й�ȣ�� �ش� �Խñۿ� ���� DB���ڵ���� ��й�ȣ�� ��ġ�ϸ� ������ �Խñ� ������ �ش� ���ڵ忡 �ݿ�
            String selectSql = "UPDATE review_board SET board_title=?, board_content=? WHERE board_no=? AND board_pw=?";
            statement = connection.prepareStatement(selectSql);
            statement.setString(1, boardTitle);
            statement.setString(2, boardContent);
            statement.setInt(3, boardNo);
            statement.setString(4, boardPw);
            statement.executeUpdate();
            response.sendRedirect(request.getContextPath()+"/Yerin/ReviewView.jsp?boardNo="+boardNo);
			}else{//���������� �Է��� ��й�ȣ�� �ش� �Խñۿ� ���� DB���ڵ���� ��й�ȣ�� Ʋ���� �˸�â ����ϰ� ������������ ���ư�
				out.println("<script>try{alert('��й�ȣ�� Ʋ���ϴ�!'); history.back();}catch(e){alert(e);}</script>");
	       		out.flush(); out.flush();//���� �����
			}          
      
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD MODIFY ACTION ERROR! �����ͺ��̽� ���¸� Ȯ���ϼ���!");
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
</body>
</html>
