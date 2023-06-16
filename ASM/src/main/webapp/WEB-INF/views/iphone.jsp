<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">

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



<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous">
	
</script>
<script src=".//JS/index.js"></script>


</head>

<body style="background-color: #f5f5f7;">
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
	<header>
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
		<h1  class="text-center">Iphone</h1>
	<div class="container-fuild">
		
		<!-- <img src="https://images.unsplash.com/photo-1561154464-82e9adf32764?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" class="card-img-top" alt="..."> -->
		
			<div id="carouselExampleInterval" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators" style="z-index: 2;">
					<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
						class="active"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
					
				</div>
			
				<div class="mx-auto carousel-inner1">
					<div class="carousel-item active" data-bs-interval="10000">
						<img src="https://shopdunk.com/images/uploaded/Danh%20m%E1%BB%A5c%20PC131.png"
							alt="..." class="img">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="https://shopdunk.com/images/uploaded/danh%20m%E1%BB%A5c%20iphone%20ipad%20t6-12.jpg" class="img"
							alt="...">
					</div>
					<div class="carousel-item">
						<img src="https://shopdunk.com/images/uploaded/danh%20m%E1%BB%A5c%20iphone%20ipad%20t5-04.jpg" class="img"
							alt="...">
					</div>
				
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
					<span class="carousel-control carousel-control-prev-icon" aria-hidden="true" ></span>
					<span class="visually-hidden"></span>
				</button>
				<button class="carousel-control-next " type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="next">
					<span class="carousel-control carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden"></span>
				</button>
			</div>
		
	</div>
	
	</header>
	<main style="padding-bottom: 70px;">
	    
      
       
            <a class="col-2 btn btn-light" style="text-decoration: none;" href="/iphone">Tất cả</a>
            <a class="col-2 btn btn-light"" href="/iphone14">iPhone 14 series</a></div>
            <a class="col-2 btn btn-light"" href="/iphone13">iPhone 13 series</a>
            <a class="col-2 btn btn-light"" href="/iphone12">iPhone 12 series</a>
            <a class="col-2 btn btn-light"" href="/iphone11">iPhone 11 series</a>
          
           
   
       
	<form  action="/sort" method="get">
          <select class="optionBox" name="optionbox">
          <option value="new" >Mới nhất</option>
          <option value="giacao" >Gía cao đến thấp</option>
          <option value="giathap">Gía thấp đến cao</option>
          <option value="a-z">Từ A-Z</option>
          <option value="z-a">Từ Z-A </option>
          <option value="" disabled selected>Thứ tự hiển thị</option>
        </select>
        
    </form>
      </div>
			

			<div class="container mt-5">
				
					<div class="row">
						<c:forEach items="${product}" var="item">
							<div class="col-6 col-md-4 col-lg-3 pb-3">
								<div class="card">
									<div class="card-body">									
										<a href="san-pham/iphone-${item.id}"><img class="img-fuild" src="${item.image}"
											height="100%" width="100%"></a>
										<h4 class="productFont card-title text-left py-2">${item.name}</h4>
										<div class="row" style="height: 24px; width: 245px;">
											<div class="col-6">
												<p class="card-text text-primary fw-bold"><fmt:formatNumber value="${item.price/1.5}" pattern="###,###,###" />đ</p>
											</div>
											<div class="col-6">
												<p class="text-decoration-line-through text-secondary"><fmt:formatNumber value="${item.price}" pattern="###,###,###" />đ</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							
						</c:forEach>
					</div>
			
			</div>

	</main>


</body>


<footer class="bg-dark">
	<div class="container" style="border-bottom: 1px solid #515154;">
		<div class="row">
			<div class="col-4">
				<div
					style="padding: 64px 0 21px 0; text-align: justify; font-size: 15px;">
					<div style="height: 315px; width: 294px; padding: 0 0 20px 0;">
						<img src=".//image/0000242_Logos Desktop.png" alt="" height="47px"
							width="184px">
						<p class=" text-light pt-3 ">Năm 2020, ShopDunk trở thành đại
							lý ủy quyền của Apple. Chúng tôi phát triển chuỗi cửa hàng tiêu
							chuẩn và Apple Mono Store nhằm mang đến trải nghiệm tốt nhất về
							sản phẩm và dịch vụ của Apple cho người dùng Việt Nam.</p>
						<div class="row">
							<div class="col-3"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src=".//image/Face.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src=".//image/Tiktok.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src=".//image/Zalo.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src=".//image/Youtube.png" alt="">
							</div>
						</div>

					</div>

				</div>
			</div>
			<div class="col-3 my-5 ps-5">
				<dl class="px-5">
					<div class="text-light pb-3" style="font-size: 15px;">Thông
						tin</div>
					<dd class="text-secondary" style="font-size: 14px">Tin tức</dd>
					<dd class="text-secondary" style="font-size: 14px">Gioi thiệu</dd>
					<dd class="text-secondary" style="font-size: 14px">Check IMEI</dd>
					<dd class="text-secondary" style="font-size: 14px">Phương thức
						thanh toán</dd>
					<dd class="text-secondary" style="font-size: 14px">Thuê điểm
						bán lẻ</dd>
					<dd class="text-secondary" style="font-size: 14px">Bảo hành và
						sửa chửa</dd>
					<dd class="text-secondary" style="font-size: 14px">Tuyển dụng</dd>
					<dd class="text-secondary" style="font-size: 14px">Đánh giá
						chất lượng, khiếu nại</dd>
				</dl>
			</div>
			<div class="col-2 my-5">
				<dl class="">
					<div class="text-light pb-3" style="font-size: 15px;">Chính
						sách</div>
					<dd class="text-secondary" style="font-size: 14px">Thu cũ đổi
						mới</dd>
					<dd class="text-secondary" style="font-size: 14px">Giao hàng</dd>
					<dd class="text-secondary" style="font-size: 14px">Giao
						hàng(ZaloPay)</dd>
					<dd class="text-secondary" style="font-size: 14px">Hủy giao
						dịch</dd>
					<dd class="text-secondary" style="font-size: 14px">Đổi trả</dd>
					<dd class="text-secondary" style="font-size: 14px">Bảo hành</dd>
					<dd class="text-secondary" style="font-size: 14px">Giải quyết
						khiếu nại</dd>
					<dd class="text-secondary" style="font-size: 14px">Bảo mật
						thông tin</dd>
					<dd class="text-secondary" style="font-size: 14px">Trả góp</dd>
				</dl>
			</div>
			<div class="col-3 my-5">
				<dl class="">
					<div class="text-light pb-3" style="font-size: 15px;">Địa chỉ
						& Liên hệ</div>
					<dd class="text-secondary" style="font-size: 14px">Tài khoản
						của tôi</dd>
					<dd class="text-secondary" style="font-size: 14px">Đơn đặt
						hàng</dd>
					<dd class="text-secondary" style="font-size: 14px">Hệ thống
						cửa hàng</dd>
					<dd class="text-secondary" style="font-size: 14px">Tìm Store
						trên map</dd>

					<dt class="text-secondary" style="font-size: 14px">Mua hàng:
						1900.6625</dt>
					<dd class="text-secondary" style="font-size: 14px">Nhánh 1:
						khu vực Hà Nội và các tỉnh phía bắc</dd>
					<dd class="text-secondary" style="font-size: 14px">Nhánh 2:
						khu vực Hồ Chí Minh và các tỉnh phía nam</dd>

					<dd class="text-secondary" style="font-size: 14px">Nhánh 3:
						Khiếu nại và góp ý</dd>

					<dd class="text-secondary" style="font-size: 14px">Doanh
						nghiệp: 0822.688.668</dd>
				</dl>
			</div>

		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-9">
				<p class="text-secondary"
					style="font-size: 13px; font-family: Arial">© 2016 Công ty Cổ
					Phần HESMAN Việt Nam GPDKKD: 0107465657 do Sở KH & ĐT TP. Hà Nội
					cấp ngày 08/06/2016. Địa chỉ: Số 76 Thái Hà, phường Trung Liệt,
					quận Đống Đa, thành phố Hà Nội, Việt Nam Đại diện pháp luật: PHẠM
					MẠNH HÒA | ĐT: 0247.305.9999 | Email: lienhe@shopdunk.com</p>
			</div>
			<div class="col-3 text-end">
				<img src=".//image/Bocongthuong.png" alt="" height="42px"
					width="134px">
			</div>
		</div>
	</div>
</footer>

</html>