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

<body ng-app="myapp">
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
	
	</header>
	<main ng-controller="myctrl"
		style="background-color: #f5f5f7; padding-bottom: 70px;">
		`
		 <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="card col-md-4 bg-white shadow-md p-5">
                <div class="mb-4 text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" class="text-success" width="75" height="75"
                        fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                        <path
                            d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                    </svg>
                </div>
                <div class="text-center">
                    <h1>Thank You !</h1>
                    <p>Cảm ơn bạn đã xác nhận đơn hàng. Vui lòng kiểm tra email để biết thêm chi tiết </p>
                    <a href="/trang-chu" class="btn btn-outline-success">Trang chủ</a>
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