<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en" >

<head>
<link rel="shortcut icon" href=".//image/icon.png" type="image/x-icon">
<title>ShopDunk</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS v5.2.1 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="/css/Trang chu.css">
<link rel="stylesheet" href="/css/order.css">



<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous">
	
</script>
<script src=".//JS/index.js"></script>


</head>

<body style="background-color: #f5f5f7">
	<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">User Manager</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body text-center">
				<c:choose>
					<c:when test="${not empty sessionScope.currentUser}">
						<h5>Welcome ${sessionScope.currentUser.fullname}</h5>
						<br>
						<div class="modal-footer">
							<a href="/resetAndChange" class=" btn btn-primary fw-bold">Change Password</a>
							<a href="/resetAndChange" class=" btn btn-primary fw-bold">Reset Password</a>
							<a href="/logout" class=" btn btn-primary fw-bold">LogOut</a>
							<c:if test="${sessionScope.currentUser.admin == true }">
								<a href="/admin" class=" btn btn-primary fw-bold">Admin page</a>
							</c:if>
						</div>
					</c:when>
					<c:otherwise>
						<a href="/login-form" class="btn btn-primary fw-bold">LogIn</a>
						<a href="/login-form" class=" btn btn-primary fw-bold">Register</a>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</div>
	
	<nav class="header navbar-expand-lg">
			<div class="header-lower container-fluid">
				<a class="navbar-brand" href="/trang-chu">
				 <img src="https://shopdunk.com/images/thumbs/0012445_Logo_ShopDunk.png" height="100%" width="173">
				</a>

				<div class="header-menu collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4"
							aria-current="page" href="/ASM/Iphone.jsp">iPhone</a></li>
						<li class="nav-item"><a
							class=" textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/iPad.jsp">iPad</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/Mac.jsp">Mac</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/Watch.jsp">Watch</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4 "
							aria-current="page" href="#">Âm thanh</a></li>
						<li class="nav-item"></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/phukien.jsp">Phụ kiện</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/dichvu.jsp">Dịch vụ</a></li>

						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4 "
							aria-current="page" href="/ASM//tragop.jsp">Trả góp</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="/ASM/khuyenmai.jsp">Khuyến mãi</a></li>
							<div class="header-links-wrapper">
								<li class="nav-item"><i
									class="search-icon nav-link active px-4 "
									style="color: white;" aria-current="page" href="#"></i></li>
								<li class="nav-item"><i id="topcartlink"
									class="bi bi-bag nav-link active px-4 "
									style="color: white;" aria-current="page" href="#">
								<span class="qty">1</span></i></li>
								<li class="nav-item"><i  data-bs-toggle="modal" data-bs-target="#exampleModal"
									class="login-icon nav-link active px-4 "
									style="color: white;" aria-current="page" href="#">
									<img src="	https://shopdunk.com/images/uploaded-source/icon/login.png" alt="">
								</i></li>
							</div>
					</ul> 	


				</div>
			</div>
		</nav>
	
	
		<!-- <img src="https://images.unsplash.com/photo-1561154464-82e9adf32764?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" class="card-img-top" alt="..."> -->


		
	<main >
		`
		<div class="container-fuild" style="margin-top: 60px;">
		<div class="row" style="height: auto; width: 50%; margin: auto; background: #fff">
		
			<div class="text-center py-3"><h4>Chi tiết đơn hàng</h4></div>
			<div class="col-6">
				<p>Mã đơn hàng: </p>
				<p>Ngày đặt hàng: </p>
				<p>Họ tên khách hàng: </p>
				<p>Email: </p>
				<br>
				<p>Sản phẩm</p>
			
				
			
			
			</div>
			<div class="col-6">
			
			<p>${order.id}</p>
			<p>${order.createDate}</p>
			<p>${order.account.fullname}</p>
			<p>${order.account.email}</p>
		
			</div>
				<div style="height: 100%; width:100%; border: 1px solid #ebebeb; margin: 0 0 12px 0; padding: 14px 14px 14px 14px">
				<table>
					<thead>
					<tr>
					<th class="col-3">Hình ảnh</th>							
					<th class="col-3">Tên</th>								
					<th class="col-3">Số lượng</th>
					<th class="col-3">Gía</th>
					</tr>
					</thead>
					
					<tbody>
						
						<c:forEach var="item" items="${cartItems}">
						<c:set var="total" value="${total + item.price /1.5 * item.sl }"></c:set>
				<tr>
						<td><img style="height: 25%; width: 25%" alt="" src="${item.image}"></td>
						<td>${item.name}</td>
						<td>${item.sl}</td>
						<td><fmt:formatNumber value="${item.price/1.5 * item.sl}" pattern="###,###,###" />đ</td>
						</c:forEach>
						</tr>
					</tbody>
				</table>
				
				</div>
			<p>Tổng giá: <fmt:formatNumber value="${total}" pattern="###,###,###" />đ</p>
		</div>
			<div class="text-center" style="height: auto; width: 35%; margin: auto; background: #fff" >
				<a href="/trang-chu" class="btn btn-primary">Tiếp tục mua sắm</a>
				
				<a href="/confirmSuccess" class=" btn btn-primary">Xác nhận dơn hàng</a></div>

		</div>
	</main>
</div>
				
		
				
		



			
			
</body>
</html>