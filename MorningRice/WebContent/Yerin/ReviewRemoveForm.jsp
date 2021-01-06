<!-- 
만든이: 2017038023 반예린
해당 소스파일 정보: 게시글 삭제 폼.
			 게시글 삭제 폼 출력 -> 게시글 삭제를 위한 비밀번호 확인 폼을 출력함.
			 비밀번호를 입력 후 '게시글 삭제'버튼을 클릭하면 실제로 삭제 과정을 진행하는 ReviewRemoveAction.jsp로 이동함.
 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
  
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  <title>이용후기 삭제</title>
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

        <h1 class="my-4 text-danger"  style="font-weight: bold;">커뮤니티</h1>
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
      	  
      	  
      	  
      	<!--//////////////////게시글 삭제 내용물 시작///////////////////  -->
<div align="center">
<h2>이용후기 삭제</h2>
<%
if(request.getParameter("boardNo") == null) {//게시글번호가 null일 경우
	//알림창 출력후 게시글 목록으로 돌아감
	out.println("<script>try{alert('존재하지 않는 게시글입니다!');}catch(e){alert(e);}</script>");
	out.flush();//버퍼 비워줌
    response.sendRedirect(request.getContextPath()+"/Yerin/ReviewList.jsp");
} else {//게시글 번호가 null이 아닐경우
%>
    <form action="<%=request.getContextPath()%>/Yerin/ReviewRemoveAction.jsp" method="post">
        <input name="boardNo" value="<%=request.getParameter("boardNo")%>" type="hidden"/>
        <div>비밀번호확인(게시글 등록시 입력한 비밀번호) :</div>
        <div><input name="boardPw" type="password"></div>
        <div>
            <input type="submit" value="게시글 삭제"/>
            <input type="reset" value="초기화"/>
        </div>
    </form>
<%    
}
%>
</div>
<!--//////////////////게시글 삭제 내용물 끝///////////////////  -->
      	  
      	  
      	  
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

