<!-- 
만든이: 2017038013 하재명
해당 소스파일 정보: 예약 목록 삭제
            예약 목록 삭제 후 addr_list로 돌아감.
 -->

<%@ page import="java.sql.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import = "CH07.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("utf-8"); %>

<html lang="en">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
  <!-- Bootstrap core CSS -->
  <link href="../Resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../Resources/css/business-casual.css" rel="stylesheet">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	
<title>PreOrder REMOVE ACTION</title>
</head>
<body>
<%
	if(request.getParameter("password") == null)
	{
		out.println("<script>try{alert('비밀번호를 입력하지 않았습니다!'); history.back();}catch(e){alert(e);}</script>");
		out.flush();
	}
	else
	{
    	String password = request.getParameter("password");
    	System.out.println("password :"+password);
    	int num = Integer.parseInt(request.getParameter("num"));
    	System.out.println("num :"+num);
    	
    	String url = "jdbc:mysql://localhost:3306/preorderdb?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
    	String user = "MorningRice";
    	String pw = "jsp123123123";
    
  		//데이터베이스 연결 관련 변수 선언
    	Connection conn = null;
    	PreparedStatement pstmt = null;
    	Statement stmt=null;
    	ResultSet rs=null;
    	String DBpw=null;
    
  		//데이터베이스 연결 관련 정보를 문자열로 선언
    	String jdbc_driver = "com.mysql.jdbc.Driver";
    
    	try
    	{
    		//DB연결 작업
        	Class.forName(jdbc_driver);
        	conn = DriverManager.getConnection(url, user, pw);
        	System.out.println("DB연결완료");

			stmt = conn.createStatement();
			rs=stmt.executeQuery("SELECT * FROM preorder WHERE num="+num);
			while(rs.next())
			{
				DBpw=rs.getString("password");
				System.out.println("입력받은 password = " + password);
				System.out.println("DB상의 password = " + DBpw);
			}
        		String sql = "DELETE FROM preorder WHERE password=?";
        		pstmt = conn.prepareStatement(sql);
        		pstmt.setString(1,password);

				if(pstmt.executeUpdate()==1)
        		{
            		response.sendRedirect("addr_list.jsp");
        		}
        		else
        		{
        			out.println("<script>try{alert('비밀번호가 틀립니다!'); history.back();}catch(e){alert(e);}</script>");
        			out.flush();
       	 		}
    	}
    	catch(Exception e)
    	{
        	e.printStackTrace();
        	out.print("예약취소 ACTION ERROR!");
    	}
    	finally
    	{
        	try {pstmt.close();} catch(Exception e){}
        	try {conn.close();} catch(Exception e){}
    	}
	}
%>
</body>
</html>