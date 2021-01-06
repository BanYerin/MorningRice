<!-- 
������: 2017038023 �ݿ���
�ش� �ҽ����� ����: �Խñ� �ۼ� ��.
			  �Խñ� �ۼ� �� ��� -> �Խñ� ����� ���� �Խñ� �ۼ� ���� �����.
			  �Խñ� �ۼ� �� '���'��ư�� Ŭ���ϸ� ������ ��ϰ����� �����ϴ� ReviewAddAction.jsp�� �̵���.
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
  
   
  <title>�̿��ı� �ۼ�</title>
  <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>

<body>
 <!-- ���� -->
    <h1 class="site-heading text-center"> 
      <a class="site-heading-lower text-danger" style="text-decoration:none; font-weight:bold;  font-family: Times New Roman,  serif;" href="../EJSong/Main.html" target="_self">Morning Rice</a>
    </h1>

    <!-- ��� �� -->
    <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
      <div class="container">
        
        <!-- [���] ��� �� -->
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        
        <!-- [���] ��� �� / ��ư -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <!-- ��� �� ���� -->
        <div class="collapse navbar-collapse" id="navbarResponsive">
          
          <!-- ��� �� ����2 -->
           <ul class="navbar-nav mx-auto">
            
            <!-- Introduce ���� -->
            <li class="nav-item active px-lg-4 btn-group">
                 
    		  <button type="button" class="btn" data-toggle="dropdown">
         	     <a class="nav-link " href="../EJSong/Mr_introduce.html" style="font-size: 20px;">Introduce <span class="sr-only">(current)</span></a>
              </button>
              
     			 <div class="dropdown-menu">
       				<a class="dropdown-item" href="../EJSong/Mr_introduce.html">�λ縻</a>
       			 	<a class="dropdown-item" href="../EJSong/Use_introduce.html">�̿���</a>
       			 	<a class="dropdown-item" href="../EJSong/Map_introduce.html">���ô� ��</a>
      			 </div> 
            </li>            
            
            <!-- Menu ���� -->
            <li class="nav-item px-lg-4 btn-group">  
            <button type="button" class="btn" data-toggle="dropdown"  >
               <a class="nav-link " href="../EJSong/Signature_menu.html" style="font-size: 20px;">Menu</a>  
             </button>  
             
             <div class="dropdown-menu">
       			<a class="dropdown-item" href="../EJSong/Signature_menu.html">�ñ״�ó</a>
       			<a class="dropdown-item" href="../EJSong/Square_menu.html">�簢���ö�</a>
       			<a class="dropdown-item" href="../EJSong/Side_menu.html">���̵�</a>
      		 </div>      			 
            </li>
            
            <!-- Pre-order ���� -->
            <li class="nav-item px-lg-4 btn-group">     
             <button type="button" class="btn" data-toggle="dropdown">
              <a class="nav-link " href="../JaeM/addr_list.jsp" style="font-size: 20px;">Pre-order</a> 
             </button>
             
             <div class="dropdown-menu">
       			<a class="dropdown-item" href="../JaeM/preorder.jsp">����</a>
       			<a class="dropdown-item" href="../JaeM/addr_list.jsp">���ฮ��Ʈ</a>
      		 </div>
            </li>
            
            <!-- Community ���� -->
            <li class="nav-item px-lg-4 btn-group">
              <button type="button" class="btn" data-toggle="dropdown">
              	<a class="nav-link " href="../Yerin/Q&AList.jsp"  style="font-size: 20px;">Community</a>
              </button>
              
              <div class="dropdown-menu">
       				 <a class="dropdown-item" href="../Yerin/Q&AList.jsp">Q&A</a>
       			 	<a class="dropdown-item" href="../Yerin/ReviewList.jsp">�̿��ı�</a>
      			 </div> 
            </li>
          
            <!--  Event ���� -->
             <li class="nav-item px-lg-4">     
               <button type="button" class="btn"  >
                <a class="nav-link " href="../EJSong/Event.html"  style="font-size: 20px;">Event</a> 
             </button>  
            </li>
            
          </ul>
        </div>
      </div>
    </nav>	
    
 <!-- ���� ���� -->
    <div class="container">
    
       <div class="row"> 
   		 <div class="col-lg-3 ">

        <h1 class="my-4 text-danger" style="font-weight: bold;">Ŀ�´�Ƽ</h1>
        <div class="list-group">
          <a href="<%=request.getContextPath()%>/Yerin/Q&AList.jsp" class="list-group-item text-info" style="font-weight: bold;">Q&A�Խ���</a>
          <a href="<%=request.getContextPath()%>/Yerin/ReviewList.jsp" class="list-group-item text-info" style="font-weight: bold;">�̿� �ı� �Խ���</a>
        </div>

      </div>
  
   <div class="col-lg-9  page-section clearfix"> 
      <!-- ��� �ڽ� ��ġ ���� -->
      <div class="intro">
        <!-- ��� �ڽ� ���� -->
        <div class="left-0 text-center bg-faded p-5 rounded">
      	  
      	  
      	  
<!-- //////////////////////////�Խñ� ��� ���빰 ����/////////////////////////////// -->
<div align="center">
<h2>�̿��ı� �ۼ�</h2>
<p>������ ������ �ı�� ��׶��̽�����  ū ���� �˴ϴ�! :)</p>
<form action="<%=request.getContextPath()%>/Yerin/ReviewAddAction.jsp" method="post">
	<table border="1" cellspacing="1" cellpadding="5" bgcolor="#E6D7FA">
	<tr>
		<td align="center">�ۼ���(�г���)</td>
    	<td><input name="boardUser" id="boardUser" type="text" placeholder="�ۼ���(�г���)"/></td>
    </tr>
    <tr>
    	<td align="center">��й�ȣ</td>
    	<td><input name="boardPw" id="boardPw" type="password" placeholder="��й�ȣ"/>(�Խù� ���� ������ �ʿ��մϴ�.)</td>
	</tr>  
	<tr>
		<td align="center">�� ����</td>
	    <td><input name="boardTitle" id="boardTitle" type="text" placeholder="�� ����" width="100px"/></td>
	</tr>
	<tr>
		<td align="center">�� ����</td>
		<td><textarea name="boardContent" id="boardContent" placeholder="����" rows="10" cols="80"></textarea></td>
	</tr>
	<tr>
        <td colspan="2" align="center"><input type="submit" value="���"/> <input type="reset" value="�ʱ�ȭ"/></td>
   	</tr>
    </table>
</form>
</div>
<!-- //////////////////////////�Խñ� ��� ���빰 ��/////////////////////////////// -->
      	  
      	  
      	  
        </div>
      </div>
    </div>
  </div>
  </div>
 

<!-- �� �Ʒ� ���� -->
<section class="page-section"></section> 

  <!-- ���� �ڽ� ���� -->
  <footer class="footer text-faded text-center py-5">

    <!-- ���� ���� -->
    <div class="container">
      <!-- ���� ���� -->
      <p class="m-0 small">Copyright &copy; Your Website 2019</p>
    </div>

  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

