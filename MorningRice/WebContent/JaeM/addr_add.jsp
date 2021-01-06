<!-- 
만든이: 2017038013 하재명
해당 소스파일 정보: 예약 작성 후 예약 내용을 출력하는 란.
            확인 버튼 클릭 시 add_list.jsp로 이동.
 -->

<%@ page import="java.sql.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %>

<%
	String url="jdbc:mysql://127.0.0.1:3306/preorderdb?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
	String user="MorningRice";
	String pw="jsp123123123";

	//데이터베이스 연결 관련 변수 선언
	Connection conn=null;
	PreparedStatement pstmt=null;
	
	//데이터베이스 연결 관련 정보를 문자열로 선언
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/preorderdb";
	
	try
	{
		//JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		
		conn=DriverManager.getConnection(url, user, pw);
		
		String sql = "insert into preorder(username, password, tel, menu, date, time, message) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,request.getParameter("username"));
		pstmt.setString(2,request.getParameter("password"));
		pstmt.setString(3,request.getParameter("tel"));
		pstmt.setString(4,request.getParameter("menu"));
		pstmt.setString(5,request.getParameter("date"));
		pstmt.setString(6,request.getParameter("time"));
		pstmt.setString(7,request.getParameter("message"));

		
		//username값을 입력할 경우 SQL문을 수행
				if(request.getParameter("username") !=null)
				{
					pstmt.executeUpdate();
				}
	}
	catch(Exception e)
	{
		e.printStackTrace();
		out.print("DB error");
	}
%>

<jsp:useBean id="addr" class="CH07.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="CH07.AddrManager" scope="application"/>

<% am.add(addr); %>

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
      	  
      	  
      	  
      	 <!---------------------------여기에 추가해 이거는 예시임.---------------- -->
<center>
<h2>예약내용</h2>
<hr>
이름(닉네임):<jsp:getProperty property="username" name="addr"/><p>
비밀번호(예약 취소시 필요합니다.):<%=addr.getPassword() %><br>
전화번호:<%=addr.getTel() %><br>
메뉴:<%=addr.getMenu() %><br>
예약날짜:<%=addr.getDate() %><br>
예약시간:<%=addr.getTime() %><br>
메시지:<%=addr.getMessage() %><br>


<form name=form1 method="post" action="addr_list.jsp" id="contactForm" novalidate="novalidate">
<div colspan="2" align="center" id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">확인</button>
            </div>
            </form>
</center>
          
          <!-- ------------------------------------------------------------->
      	  
      	  
      	  	
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
