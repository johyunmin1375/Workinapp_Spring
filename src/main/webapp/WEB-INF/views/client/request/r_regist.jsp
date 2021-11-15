<%@page import="com.koreait.workinapp.domain.Requests"%>
<%@page import="com.koreait.workinapp.domain.SubCategory"%>
<%@page import="com.koreait.workinapp.domain.TopCategory"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
	List<TopCategory> topList =(List)request.getAttribute("topList");
	List<SubCategory> subList =(List)request.getAttribute("subList");
	List<Requests> reqList = (List)request.getAttribute("reqList");
%>
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
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
		var clickDate;
		
        var calendar = new FullCalendar.Calendar(calendarEl, {
        height: '100%',
        expandRows: true,
        slotMinTime: '08:00',
        slotMaxTime: '20:00',
        headerToolbar: {
            left: 'prev today',
            center: 'title',
            right: 'next'
        },
        initialView: 'dayGridMonth',
        initialDate: '2021-08-19',
        //navLinks: true, // can click day/week names to navigate views
        editable: true,
        selectable: true,
        
        nowIndicator: true,
        dayMaxEvents: true, // allow "more" link when too many events 
        unselectAuto:false,
        events: [ 	
       	 <%for(Requests req:reqList){%>
    	 {
    		<%if(req.getSubCategory().getSub_pk()==1){%> //휴가
    			color : "#87CEEB",
    		<%}else if(req.getSubCategory().getSub_pk()==2){%> //연치
    			color : "#90EE90",
    		<%}else if(req.getSubCategory().getSub_pk()==3){%> //병가
    			color :"#CE97FB",
    		<%} else if(req.getSubCategory().getSub_pk()==4){%> //외근
    			color :"#FFA500",
    		<%} else if(req.getSubCategory().getSub_pk()==5){%> //야근
    			color :" #F6C1CE",
    		<%} else if(req.getSubCategory().getSub_pk()==6){%> //출장
    			color :"#FFD700",
    		<%} else if(req.getSubCategory().getSub_pk()==7){%> //근무
    			color :"#C0C0C0",
    		<%}%>
    		<%if(req.getReq_status()==0){%>
	 			title:'<%=req.getSubCategory().getSub_name()%>  - 요청 대기 중',
	 		<%}else if(req.getReq_status()==3){%>
	 		title:'<%=req.getSubCategory().getSub_name()%>  - 거절',
	 		<%}else{%>
	 		title:'<%=req.getSubCategory().getSub_name()%>',
	 		<%}%>
	 		start: '<%=req.getReq_date()%>',
    	 },
	 <%}%>
        ],
        
        
        //클릭한 날짜 얻어오기
        dateClick:function(info){
        	clickDate = info.dateStr;
        	$(".selectday").html(clickDate);
        	$("#date").val(clickDate);
        },
     
        
        });
        calendar.render();
    });
    </script>
    
    <script type="text/javascript">
    $(function(){
    	$("#top").change(function(){
    		$("#top_n").val($("#top option:checked").text());
    	});
    	$("#sub").change(function(){
    		//alert($("#sub option:selected").val());
    		$("#sub_n").val($("#sub option:checked").text());
    		$("#subk").val($("#sub option:selected").val());
    	});
    
    	
    });
    
    

    
 function regist(){
	 alert("요청을 전송했습니다.");
	$("#form1").attr({
		action:"/client/requests/regist",
		method:"post"
	});
	$("form").submit();	
	}

    </script>
<style>
#calendar-container {
	width: 100%;
	height: 500px;
	 margin: 20px auto; 
	/* padding: 0 10px; */
}

#header_p {
	border-bottom: 5px solid #1478FF;
	margin-top: 30px;
	margin-bottom: 15px;
}
</style>
    
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
                <form>
                    <div class="row">
                    <div class="col-xl-8">
                    	<div class="card shadow">
                    		<div class="card-body">
                    			<!-- Calendar -->
								<div id='calendar-container'>
									<div id='calendar'></div>
								</div>
                    		
                    		</div>
                    		</div>
                    	</div>
                    	
                    	<div calss="col-xl-4">
                    		<div class="col-md-12">
									<!-- select -->
								<div class="form-group" style="width: 300px;">
									<div class="page-header" id="header_p" style="width: 100%;">
										<h2>요청 유형</h2>
									</div>
									<select class="form-control" id="top" name="topcategory_id">
										<option value="nos">==선택하세요==</option>
										<%for(TopCategory top : topList){ %>
											<option value="<%=top.getTop_pk()%>"><%=top.getTop_name()%></option>
										<%} %>
									</select>
								</div>
								<!-- select end -->
	                    	</div>         
                    	
	                    	<div class="col-md-12">
									<!-- select -->
								<div class="form-group" style="width: 300px;">
									<div class="page-header" id="header_p" style="width: 100%;">
										<h2>상세 유형</h2>
									</div>
									<select class="form-control" id="sub" name="subcategory_id">
										<option value="nos" selected disabled hidden>==선택하세요==</option>
										
									</select>
								</div>
								<!-- select end -->
	                    	</div>         
								
	                    		<!-- 선택한 날짜 -->
	                    		<div class="col-md-12">
	                    		<div class="form-group" style="width: 300px;">
									<div class="page-header" id="header_p" style="width: 100%;">
										<h2>선택한 날짜</h2>
									</div>
									<h4 class="selectday"></h4>	                    		
	                    		</div>                    		
	                    		</div>
								
								<div class="col-md-12">
									<div class="form-group" style="width: 300px;">
			                    		<a class="btn btn-primary btn-icon-split pull-right"
											data-toggle="modal" data-target="#requestsModalCenter"> <span
											class="icon text-white-50"> <i class="fas fa-user"></i>
										</span> <span class="text">승인권자 선택</span>
										</a>                   		                    	
									</div>
								</div>
	                    </div>

								
                    	</div>
                
                </form>
                </div>
            </div>
            <!-- End of Main Content -->
			<!--승인권자 모달창  -->
			<%@include file="../inc/requests_modal.jsp"%>
			
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
    
    
    <script type="text/javascript">
    $(function(){
    	$("select[name='topcategory_id']").change(function(){
    		//alert($(this).val());
    		getSubList($(this).val());
    	});
    	
    });
    
    function getSubList(top_pk){
    	//비동기 방식으로 하위 카테고리 가져오기 
    	$.ajax({
    		url:"/client/request/sublist?top_pk="+top_pk,
    		type:"GET",
    		success:function(result,status, xhr){
    			$("select[name='subcategory_id']").html(""); //초기화
    			//alert(result.length);
    			var tag="";
    			tag +="<option value='nos'>==선택하세요==</option>";
    			for(var i=0;i<result.length;i++){
    				var json=result[i];
    				tag+="<option id ='ww' value='"+json.sub_pk+"'>"+json.sub_name+"</option>";
    			}
    			
    			$("select[name='subcategory_id']").append(tag);
    		}
    	});
    	
    }
    
    
    </script>

</body>

</html>