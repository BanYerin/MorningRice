<!-- 
만든이: 2017038023 반예린
해당 소스파일 정보: 게시글 목록 출력 기능.
			 DB를 이용한 게시글 목록 출력 -> DB테이블로 부터 모든 게시글 정보 레코드들을 추출하여 모든 게시글들의 게시글 번호, 제목, 작성자(닉네임), 작성일을 목록형태로 출력함.
			 게시글의 제목을 클릭하면 해당 게시글의 내용을 자세히 볼 수 있는 Q&AView.jsp로 이동함.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

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
  
  <title>Q&A 목록</title>
  
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
    
  
   <!-- 양쪽 여백 -->
    <div class="container">
    
    <div class="row"> 
     <div class="col-lg-3 ">

        <h1 class="my-4 text-danger" style="font-weight: bold;">커뮤니티</h1>
        <div class="list-group">
          <a href="<%=request.getContextPath()%>/Yerin/Q&AList.jsp" class="list-group-item text-info" style="font-weight: bold;">Q&A게시판</a>
          <a href="<%=request.getContextPath()%>/Yerin/ReviewList.jsp" class="list-group-item text-info" style="font-weight: bold;">이용 후기 게시판</a>
        </div>

      </div>
      
     <div class="col-lg-9  page-section clearfix"> 
    
      <!-- 흰색 박스 위치 설정 -->
      <div class="intro">
        <!-- 흰색 박스 설정 -->
        <div class="left-0 text-center bg-faded p-5 rounded">
      	  
      	  
      	  
      	<!-- //////////////////////////게시판 목록 내용물 시작/////////////////////////////// -->

<%
int currentPage = 1; //게시글목록 페이지의 현재 페이지
if(request.getParameter("currentPage") != null) {//게시글 목록 페이지의 현재 페이지가 null이 아니면
	//게시글목록 페이지의 현재 페이지
    currentPage = Integer.parseInt(request.getParameter("currentPage"));
}
 
int totalRowCount = 0; //전체 게시글의 개수를 카운트 하기위한 변수
 
//DB연결을 위한 설정
String dbUrl = "jdbc:mysql://127.0.0.1:3306/board?allowMultiQueries=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
String dbUser = "MorningRice";
String dbPw = "jsp123123123";
Connection connection = null;
PreparedStatement totalStatement = null;
PreparedStatement listStatement = null;
Statement aiSortStmt = null; //게시글번호 오토인크리먼트 값 재정렬하기위한 statement
ResultSet totalResultSet = null; //전체 게시글 레코드 개수를 카운트하기 위한 결과객체
ResultSet listResultSet = null; //추출한 전체 게시글 레코드들을 받아올 결과객체
try {
	//DB연결 작업
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection(dbUrl, dbUser, dbPw);
    System.out.println("DB연결완료");
    
    //DB테이블로 부터 전체 레코드의 개수를 카운트하여 알아봄
    String totalSql = "SELECT COUNT(*) FROM qa_board";
    totalStatement = connection.prepareStatement(totalSql);
    totalResultSet = totalStatement.executeQuery();
    if(totalResultSet.next()) {
        totalRowCount = totalResultSet.getInt(1);
    }
%>
    <!-- <div>전체 게시글 수 : <%=totalRowCount%></div> -->
<%    
    int pagePerRow = 10; //게시글목록의 한 페이지당 들어가는 게시글의 개수
	
	//게시글번호 오토인크리먼트 값을 재정렬
    String aiSortSql = "ALTER TABLE qa_board AUTO_INCREMENT=1; SET @COUNT = 0; UPDATE qa_board SET qa_board.board_no = @COUNT:=@COUNT+1;";
    aiSortStmt = connection.createStatement();
    aiSortStmt.executeUpdate(aiSortSql);
    
  	//게시글 레코드들을 게시글 번호의 오름차순으로 추출하여 결과객체에 넣음
    String listSql ="SELECT board_no, board_title, board_user, board_date FROM qa_board ORDER BY board_no";
    listStatement = connection.prepareStatement(listSql);
    listResultSet = listStatement.executeQuery();
    
    
%>
<div class="container">
  <h2 style="font-weight: bold;">Q&A</h2>
  <p>모닝라이스에 대한 고객님들의 Q&A 게시판입니다.</p>
    <div class="float-right">전체 게시글 수 : <%=totalRowCount%></div>
  <table class="table table-striped">
    <thead class="thead-dark">
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자(닉네임)</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
<%			listResultSet.beforeFirst(); //행의 처음으로 이동
            while(listResultSet.next()) {//결과객체에 정보가 존재하는동안 반복
%>
                <tr>
                	<td><%=listResultSet.getString("board_no")%></td>
                    <td>
						<a href="<%=request.getContextPath()%>/Yerin/Q&AView.jsp?boardNo=<%=listResultSet.getInt("board_no")%>">
            				<%=listResultSet.getString("board_title")%>
						</a>
  					</td>
                    <td><%=listResultSet.getString("board_user")%></td>
                    <td><%=listResultSet.getString("board_date")%></td>
                </tr>
<%        
            }
%>
    </tbody>
    </table>
    <hr />
    <a href="<%=request.getContextPath()%>/Yerin/Q&AAddForm.jsp" class="btn btn-primary float-right">게시글 입력</a>
    
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link" href="#">이전</a></li>
			<li class="page-item active"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">다음</a></li>
		</ul>

<%
    int lastPage = totalRowCount/pagePerRow; //게시글 목록 페이지의 마지막 페이지: 전체 게시글 개수를 미리 정해진 한 페이지당 게시글 개수로 나눈 결과값
    if(totalRowCount%pagePerRow != 0) {//전체 게시글 개수를 미리 정해진 한 페이지당 게시글 개수로 나눈결과의 나머지가 0이 아니면
    	//게시글 목록 페이지의 마지막 페이지를 1페이지 증가시킴
        lastPage++;
    }
%>
    <div>
<%
        if(currentPage>1) {//현재 게시글목록 페이지가 1페이지보다 크면
        	//'이전'링크에 연결된 페이지는 현재 페이지보다 한단계 이전의 페이지임
%>
            <a href="<%=request.getContextPath()%>/Yerin/Q&AList.jsp?currentPage=<%=currentPage-1%>">이전</a>
<%
        }
        if(currentPage < lastPage) {//현재 게시글목록 페이지가 게시글목록 페이지의 마지막 페이지보다 작으면
        	//'다음'링크에 연결된 페이지는 현재 페이지보다 한단계 이후의 페이지임
%>
 
            <a href="<%=request.getContextPath()%>/Yerin/Q&AList.jsp?currentPage=<%=currentPage+1%>">다음</a>
<%
        }
%>
    </div>
<%
} catch(Exception e) {
    e.printStackTrace();
    out.print("BOARD LIST ERROR! 데이터베이스 상태를 확인하세요!");
} finally {
    try {totalResultSet.close();} catch(Exception e){}
    try {listResultSet.close();} catch(Exception e){}
    try {totalStatement.close();} catch(Exception e){}
    try {listStatement.close();} catch(Exception e){}
    try {connection.close();} catch(Exception e){}
}
%>
</div>

<!-- //////////////////////////게시판 목록 내용물 끝/////////////////////////////// -->

      	  
      	  </div>
      	  </div>
        </div>
      </div>
    </div> 
 

<!-- 위 아래 여백 -->
<section class="page-section"></section> 

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


