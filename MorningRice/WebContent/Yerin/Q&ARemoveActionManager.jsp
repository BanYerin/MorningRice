<!-- 
������: 2017038023 �ݿ���
�ش� �ҽ����� ����: ������ �������� �Խñ� �������.
			 DB�� �̿��� �Խñ� ������� -> DB���̺�κ��� ������ �������� ���ڵ带 �����Ͽ� �ش� ���ڵ��� ��й�ȣ�� �������� �Է¹��� ��й�ȣ�� ���ϰ�,
			 ��й�ȣ�� ��ġ�ϸ� �ش� �Խñ��� ������ �������� ����(�ش� DB���ڵ� ����)�� �����ϰ� ��й�ȣ�� Ʋ���� �˸�â ����� ������������ �ǵ��ư�
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD REMOVE ACTION</title>
</head>
<body>
<%
if(request.getParameter("boardNo") == null || request.getParameter("boardPw") == null) {//�Խñ۹�ȣ�� null�̰ų� �Խñ� �������� �Է¹��� ��й�ȣ�� null�� ���
	//�˸�â ����� ������������ ���ư�
	out.println("<script>try{alert('�������� �ʴ� �Խñ��̰ų� ��й�ȣ�� �Է����� �ʾҽ��ϴ�!'); history.back();}catch(e){alert(e);}</script>");
	out.flush();//���� �����
} else {//�Խñ� ��ȣ �� �Խñ� �������� �Է¹��� ��й�ȣ�� null�� �ƴҰ��
	//�Խñ� ���������κ��� ���޹��� �� ������ �� ������ ����
    int boardNo = Integer.parseInt(request.getParameter("boardNo"));
    System.out.println("boardNo :"+boardNo);
    String boardPw = request.getParameter("boardPw");
    System.out.println("boardPw :"+boardPw);
    
  	//DB������ ���� ����
    String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
    String dbUser = "MorningRice";
    String dbPw = "jsp123123123";
    Connection connection = null;
    PreparedStatement statement = null;
    Statement stmt=null;
    ResultSet rs=null;
    String DBpw=null; //������ �������� DB���ڵ�κ��� ������ ��й�ȣ�� ������ ���� ����
    
    try {
    	//DB���� �۾�
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
        System.out.println("DB����Ϸ�");
        
     	//manager���̺�κ��� ������ �������� ���ڵ带 �����Ͽ� manager_pw�� ������ DBpw�� ����
      	stmt = connection.createStatement();
      	rs=stmt.executeQuery("SELECT * FROM manager");
      	while(rs.next()){//�����ü�� ������ �����ϴµ��� �ݺ�
      	DBpw=rs.getString("manager_pw");
      	}
        
		if(boardPw.equals(DBpw)){//���������� �Է��� ������ ��й�ȣ��  DB���ڵ���� ������ ��й�ȣ�� ��ġ�ϸ� �ش� �Խñ� ���ڵ带 DB���̺�κ��� ����
        String sql = "DELETE FROM qa_board WHERE board_no=?";
        statement = connection.prepareStatement(sql);
        statement.setInt(1, boardNo);
        if(statement.executeUpdate()==1){//������� ���� ����� ���̸�
        	//�Խñ� ������� ���ư�
            response.sendRedirect(request.getContextPath()+"/Yerin/Q&AList.jsp");
        	} else {//������� ���� ����� �����̸�
        	//�˸�â ��� �� ������ �������� �ٽ� �ǵ��ư�
        	out.println("<script>try{alert('�Խñ� ������ �����߽��ϴ� �ٽ� �õ����ּ���!');}catch(e){alert(e);}</script>");
       		out.flush(); out.flush();//���� �����
            response.sendRedirect(request.getContextPath()+"/Yerin/Q&ARemoveFormManager.jsp?boardNo="+boardNo);
       	 	}
		}else{//���������� �Է��� ������ ��й�ȣ��  DB���ڵ���� ������ ��й�ȣ�� Ʋ���� �˸�â ����ϰ� ������������ ���ư�
			out.println("<script>try{alert('��й�ȣ�� Ʋ���ϴ�!'); history.back();}catch(e){alert(e);}</script>");
       		out.flush(); out.flush();//���� �����
       		
       		System.out.println(DBpw);
		}
    } catch(Exception e) {
        e.printStackTrace();
        out.print("BOARD REMOVE ACTION Manager ERROR! �����ͺ��̽� ���¸� Ȯ���ϼ���!");
    } finally {
        try {statement.close();} catch(Exception e){}
        try {connection.close();} catch(Exception e){}
    }
}
%>
</body>
</html>
