<!-- 
만든이: 2017038013 하재명
해당 소스파일 정보: 예약 폼.
            예약 작성 후 '확인' 버튼 클릭 시 addr_add.jsp로 이동.
 -->

<%@ page import="java.sql.*" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<% request.setCharacterEncoding("utf-8"); %>


<html lang="en">

<head>

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


      	  <!-- Contact Section -->
  <section id="contact">
    <div class="container">
      <h2 class="text-center text-uppercase mb-0" style="font-weight: bold;">예약</h2>
      <hr class="star-dark mb-5">
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
          <form name=form1 method="post" id="contactForm" novalidate="novalidate">

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>이름(닉네임)</label>
                <input class="form-control" id="name" type="text" required="required" data-validation-required-message="Please enter your name." size=20 name="username" autofocus="autofocus" placeholder="Name">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>비밀번호(예약 취소시 필요합니다.)</label>
                <input class="form-control" id="password" type="text" required="required" data-validation-required-message="Please enter your password." size=20 name="password" autofocus="autofocus" placeholder="Password">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>전화번호</label>
                <input class="form-control" id="tel" type="text" required="required" data-validation-required-message="Please enter your telephone." size=20 name="tel" placeholder="Telephone">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>메뉴</label>
                <select class="form-control" id="menu" type="menu" required="required" data-validation-required-message="Please select your menu." name="menu">
                <option value="메뉴" selected="selected">메뉴</option>
                <option value="나시고랭">나시고랭</option>
                <option value="함박 스테이크">함박 스테이크</option>
                <option value="순살 고등어조림">순살 고등어조림</option>
                <option value="깐풍기 도시락">깐풍기 도시락</option>
                <option value="참치야채감초고추장">참치야채감초고추장</option>
                <option value="--------------------">--------------------</option>
                <option value="새치고기고기">새치고기고기</option>
                <option value="돈치고기고기">돈치고기고기</option>
                <option value="고기고기">고기고기</option>
                <option value="동백">동백</option>
                <option value="국화">국화</option>
                <option value="돈까스 도련님">돈까스 도련님</option>
                <option value="--------------------">--------------------</option>
                <option value="치킨샐러드">치킨샐러드</option>
                <option value="감자고로케">감자고로케</option>
                <option value="미니 샐러드">미니 샐러드</option>
                <option value="케이준 후라이드">케이준 후라이드</option>
                <option value="교자만두">교자만두</option>
                <option value="찹쌀탕수육">찹쌀탕수육</option>
                </select>
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>예약날짜</label>
                <input class="form-control" id="date" type="date" min="2019-5-11" size =20 required="required" data-validation-required-message="Please select Date." name="date" placeholder="Date">
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>예약시간</label>
                <select class="form-control" id="time" type="time" required="required" data-validation-required-message="Please select your time." name="time">
                <option selected>예약시간</option>
                <option>6:00~6:30</option>
                <option>6:30~7:00</option>
                <option>7:00~7:30</option>
                <option>7:30~8:00</option>
                <option>8:00~8:30</option>
                <option>8:30~9:00</option>
                <option>9:00~9:30</option>
                <option>9:30~10:00</option>
                <option>10:00~10:30</option>
                <option>10:30~11:00</option>
                <option>11:00~11:30</option>
                <option>11:30~12:00</option>
                <option>12:00~12:30</option>
                <option>12:30~13:00</option>
                <option>13:00~13:30</option>
                <option>13:30~14:00</option>
                </select>
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>메시지</label>
                <textarea class="form-control" id="message" type="message" rows="5" placeholder="Message" required="required" data-validation-required-message="Please enter a message." name="message"></textarea>
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <br>
            <div colspan="2" align="center" id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton" formaction="addr_add.jsp">확인</button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </section> 
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