<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>WorkinApp</title>

    <!-- Custom fonts for this template-->
   <!-- Custom fonts for this template-->
    <link href="/resources/client/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/client/css/sb-admin-2.min.css" rel="stylesheet">
    <link href='/resources/client/lib/main.css' rel='stylesheet' />
    <script src='/resources/client/lib/main.js'></script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">  
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            
            <!-- Main Content -->
            <div id="content">
                
                <!-- Topbar -->
                <%@include file="../inc/header.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    
                </div>
            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <%@include file="../inc/footer.jsp" %>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

	<!-- Logout Modal start-->
	<%@include file="../inc/logout_modal.jsp"%>
	<!-- Logout Modal end-->

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/client/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/client/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/client/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/client/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="/resources/client/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="/resources/client/js/demo/chart-area-demo.js"></script>
    <script src="/resources/client/js/demo/chart-pie-demo.js"></script>

</body>

</html>