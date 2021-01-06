<!-- 
만든이: 2017038013 하재명
해당 소스파일 정보: 예약리스트 출력 폼.
            서버에서 저장된 예약리스트를 불러온다.
 -->

<%@ page import="java.sql.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import = "CH07.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="am" class="CH07.AddrManager" scope="application" />

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>MornigRice</title>

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
  
	<style>
		td
		{
			vertical-align: top;
			border-bottom: 1px solid #ccc;
		}

		thead th
		{
    		font-weight: bold;
    		vertical-align: top;
    		color: #369;
    		border-bottom: 3px solid #036;
		}

		tbody th
		{
    		font-weight: bold;
    		vertical-align: top;
    		border-bottom: 1px solid #ccc;
    		background: #f3f6f7;
    	}
    </style>
  
  
</head>

<body>
 <!-- 제목 -->
    <h1 class="site-heading text-center"> 
      <a class="site-heading-lower text-danger" style="text-decoration:none; font-weight:bold;  font-family: Times New Roman,  serif;" href="../EJSong/Main.html" target="_self">Morning Rice</a>
    </h1>

    <!-- 상단 바 -->
    <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
      <div class="container">
        
        <!-- [축약] 상단 바 -->
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        
        <!-- [축약] 상단 바 / 버튼 -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- 상단 바 내부 -->
        <div class="collapse navbar-collapse" id="navbarResponsive">
          
          <!-- 상단 바 내부2 -->
           <ul class="navbar-nav mx-auto">
            
            <!-- Introduce 설정 -->
            <li class="nav-item active px-lg-4 btn-group">
                 
    		  <button type="button" class="btn" data-toggle="dropdown">
         	     <a class="nav-link " href="../EJSong/Mr_introduce.html" style="font-size: 20px;">Introduce <span class="sr-only">(current)</span></a>
              </button>
              
     			 <div class="dropdown-menu">
       				<a class="dropdown-item" href="../EJSong/Mr_introduce.html">인사말</a>
       			 	<a class="dropdown-item" href="../EJSong/Use_introduce.html">이용방법</a>
       			 	<a class="dropdown-item" href="../EJSong/Map_introduce.html">오시는 길</a>
      			 </div> 
            </li>            
            
            <!-- Menu 설정 -->
            <li class="nav-item px-lg-4 btn-group">  
            <button type="button" class="btn" data-toggle="dropdown"  >
               <a class="nav-link " href="../EJSong/Signature_menu.html" style="font-size: 20px;">Menu</a>  
             </button>  
             
             <div class="dropdown-menu">
       			<a class="dropdown-item" href="../EJSong/Signature_menu.html">시그니처</a>
       			<a class="dropdown-item" href="../EJSong/Square_menu.html">사각도시락</a>
       			<a class="dropdown-item" href="../EJSong/Side_menu.html">사이드</a>
      		 </div>      			 
            </li>
            
             <!-- Pre-order 설정 -->
            <li class="nav-item px-lg-4 btn-group">     
             <button type="button" class="btn" data-toggle="dropdown">
              <a class="nav-link " href="../JaeM/addr_list.jsp" style="font-size: 20px;">Pre-order</a> 
             </button>
             
             <div class="dropdown-menu">
       			<a class="dropdown-item" href="../JaeM/preorder.jsp">예약</a>
       			<a class="dropdown-item" href="../JaeM/addr_list.jsp">예약리스트</a>
      		 </div>
            </li>
            
            <!-- Community 설정 -->
            <li class="nav-item px-lg-4 btn-group">
              <button type="button" class="btn" data-toggle="dropdown">
              	<a class="nav-link " href="../Yerin/Q&AList.jsp"  style="font-size: 20px;">Community</a>
              </button>
              
              <div class="dropdown-menu">
       				 <a class="dropdown-item" href="../Yerin/Q&AList.jsp">Q&A</a>
       			 	<a class="dropdown-item" href="../Yerin/ReviewList.jsp">이용후기</a>
      			 </div> 
            </li>
          
            <!--  Event 설정 -->
             <li class="nav-item px-lg-4">     
               <button type="button" class="btn"  >
                <a class="nav-link " href="../EJSong/Event.html"  style="font-size: 20px;">Event</a> 
             </button>  
            </li>
            
          </ul>
        </div>
      </div>
    </nav>	

  <div class="container">
    
    <div class="row"> 
     <div class="col-lg-3 ">

        <h1 class="my-4 text-danger" style="font-weight: bold;">예약</h1>
        <div class="list-group">
          <a href="../JaeM/preorder.jsp" class="list-group-item text-info" style="font-weight: bold;">예약하기</a>
          <a href="../JaeM/addr_list.jsp" class="list-group-item text-info" style="font-weight: bold;">예약리스트</a> 
        </div>

      </div>
      
     <div class="col-lg-9  page-section clearfix">  
      <!-- 흰색 박스 위치 설정 -->
      <div class="intro text-center bg-faded p-5 rounded">
  
  <!-- --------------------------------------------------------------------------------------------- -->

  
  
<div align="center" class="text-center">
<h2 style="font-weight: bold;">예약 리스트</h2>
<hr>
<p>  
<table class="table table-striped">
    <thead class="thead-dark">
    	<tr>
    		<th>이름(닉네임)</th>
    		<th>전화번호</th>
    		<th>메뉴</th>
    		<th>예약날짜</th>
    		<th>예약시간</th>
    		<th>메시지</th>
    		<th>예약취소</th>
    	</tr>
    </thead>

  <%
	String username = null;
	String password = null;
	String tel = null;
	String menu = null;
	String date = null;
	String time = null;
	String message = null;
	int num=0;

	String url="jdbc:mysql://127.0.0.1:3306/preorderdb?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
	String user="MorningRice";
	String pw="jsp123123123";

	//데이터베이스 연결 관련 변수 선언
	Connection conn=null;
	Statement stmt=null;
	
	//데이터베이스 연결 관련 정보를 문자열로 선언
	String jdbc_driver = "com.mysql.jdbc.Driver";
	
	try
	{
		//JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		
		conn=DriverManager.getConnection(url, user, pw);
	
	
		stmt = conn.createStatement();
	
		//select를 수행하면 데이터정보가 ResultSet 클래스의 인스턴스로 반환
		ResultSet rs =stmt.executeQuery("select * from preorder");

		//마지막 데이터까지 반복함
		while(rs.next())
		{
			username = rs.getString("username");
			password = rs.getString("password");
			tel = rs.getString("tel");
			menu = rs.getString("menu");
			date = rs.getString("date");
			time = rs.getString("time");
			message = rs.getString("message");
			num = rs.getInt("num");
%>
			<tbody>
			 <tr>
			 <td><%=username %></td>
			 <td><%=tel %></td>
			 <td><%=menu %></td>
		 	 <td><%=date %></td>
		 	 <td><%=time %></td>
		 	 <td><%=message %></td>
      		 <td colspan="2" align="center">
     		    <input type="hidden" name="num" value="<%=num%>" />
     		    <a href="<%=request.getContextPath()%>/JaeM/ListRemoveForm.jsp?num=<%=num%>" class="btn btn-info float-left">취소</a>
     		 </td>
   			</tr>
			</tbody>
			
<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.print("DB error");
	}
%>



</table>
    <a href="<%=request.getContextPath()%>/JaeM/preorder.jsp" class="btn btn-success float-right">예약 등록</a>
     	
</div>
</div>
</div>
</div>
</div> 


  <!-- 갈색 박스 설정 -->
  <footer class="footer text-faded text-center py-5">

    <!-- 양쪽 여백 -->
    <div class="container">
      <!-- 글자 설정 -->
      <p class="m-0 small">Copyright &copy; Your Website 2019</p>
    </div>

  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
