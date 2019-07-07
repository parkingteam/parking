{% load staticfiles %}
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri= http //java.sun.com/jsp/jstl/core prefix= c %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>ParkingHeros</title>

  <!-- Custom fonts for this template-->
  <link href='{% static "vendor/fontawesome-free/css/all.min.css" %}' rel="stylesheet" type="text/css">
  <link href= "https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="<c:url value="/res/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" media="screen">
  <!-- Custom styles for this template-->
  <link href='{% static "css/sb-admin-2.min.css" %}' rel="stylesheet" type="text/css">
  <!-- moadal css -->
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="main">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Parking</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="intro">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>����</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">�м�</div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>�м� ����</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">�������� �� ���� �߻� ����:</h6>
            <a class="collapse-item" href="weekday">����</a>
            <a class="collapse-item" href="weekend">�ָ�</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>�м� ���</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">���� �ڷ�</div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>�ڷ�</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">������ ���� ���� ����Ʈ</h6>
            <a class="collapse-item" href="https://data.seoul.go.kr/">����� ���� ������ ����</a>
            <a class="collapse-item" href="https://www.data.go.kr/">���� ������ ����</a>
          </div>
        </div>
      </li>

   

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
          <!-- Breadcrumbs -->
          
			{% block content %}
			{% load static %}
			
			<h3>�м� ����(�ָ�)</h3>
			{% endblock content %}
			
        <!-- Page Heading -->
         <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">���� ������ �ɰ��� ������ �����ϱ� ���� ���� ����</h1>
         </div>
         <div class="d-sm-flex align-items-center justify-content-between mb-3">
         
        <!-- /.container-fluid -->
		<div class="col-lg-6">

        <!-- Dropdown Card Example -->
		<div class="dropdown show">
           <div class="card shadow mb-3">
                <!-- Card Header - Dropdown -->
				  <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				    <h7>��Ȱ �α�</h7>
				  </a>
				
				<!-- �޴� ���̱� -->
				  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
				  	<a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="True" >
				      1) ��Ȱ �α���?</a>
				  	<a href="#collapseCardExample2" class="d-block card-header py-3" data-toggle="collapse" role="button" aria-expanded="True" >
				  	  2) �ð�ȭ �ڷ�</a>
				    <a class="dropdown-item" href="#">
				      3) ��Ȱ�α� ���� �� ����</a>
				  </div>
				
                <!-- 1) ��Ȱ�α���? �� collapse-->
                <div class="collapse" id="collapseCardExample" style="">
                <div class="card-body">
                	<h6 class="m-0 font-weight-bold text-primary">1-1) ��Ȱ �α���?</h6>
                   	 ==> ��ġ���� �ָ� �ִ� �α����� �ο���
              	<hr style="border:none; border:1px dashed blue;">     	            
                	<h6 class="m-0 font-weight-bold text-primary">1-2) ��� ���� ����</h6>
                   	 ==> �α� ������ ���� ���� �ܺ� ���� ���� Ȯ���� ������ ���������� ������ ���̶� ����.
                </div>                  
               </div>
               <div class="layer" id="iframeTarget">
				<form name="surveyForm"  id="surveyForm"  method="post" style="margin:0;padding:0;">
	
				<!-- Button to trigger modal -->
				<a href='{% static "python/result/large_pop.svg" %}' role="button" class="btn" data-toggle="modal">Launch demo modal</a>
			
				<!-- Modal -->
				<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="card-body">
				  <div class="modal-header">
				    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">��</button>
				    <h3 id="myModalLabel">����� �α� ���� ����</h3>
				  </div>
				  </div>
				  <div class="modal-body">
				   
				  </div>
				  <div class="modal-footer">
				    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
				    <button class="btn-primary" data-dismiss="modal" aria-hidden="true">Close</button>
				  </div>
				</div>        
				</form>
				</div>
				
                                       
           </div>
          </div>
         </div>
        </div>
            
            
      <!-- End of Main Content -->
	 </div>
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <script src='{% static "vendor/jquery/jquery.min.js" %}'></script>
  <script src='{% static "vendor/bootstrap/js/bootstrap.bundle.min.js" %}'></script>

  <!-- Core plugin JavaScript-->
  <script src='{% static "vendor/jquery-easing/jquery.easing.min.js" %}'></script>

  <!-- Custom scripts for all pages-->
  <script src='{% static "js/sb-admin-2.min.js" %}'></script>

  <!-- Page level plugins -->
  <script src='{% static "vendor/chart.js/Chart.min.js" %}'></script>

  <!-- Page level custom scripts -->
  <script src='{% static "js/demo/chart-area-demo.js" %}'></script>
  <script src='{% static "js/demo/chart-pie-demo.js" %}'></script>
  <script src='{% static "js/demo/chart-bar-demo.js" %}'></script>
  
</body>

</html>
