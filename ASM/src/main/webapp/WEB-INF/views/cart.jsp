<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
<title>ShoDdunk - iPhone</title>
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
<link rel="stylesheet" href="/css/iPhone.css">
<script src="Trang chủ.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous">
	
</script>
</head>

<body ng-app="myapp">
	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary "
			style="height: 64px; background-color: #515154;">
			<div class="container-fluid" style="width: auto;">
				<a class="navbar-brand" href="#"> <img
					src="/image/0000242_Logos Desktop.png" height="45" width="173">

				</a>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4"
							aria-current="page" href="#">iPhone</a></li>
						<li class="nav-item"><a
							class=" textBox nav-link active text-light px-3 "
							aria-current="page" href="#">iPad</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="#">Mac</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="#">Watch</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4 "
							aria-current="page" href="#">Âm thanh</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="#">Phụ kiện</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="#">Dịch vụ</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-3 "
							aria-current="page" href="#">Trả góp</a></li>
						<li class="nav-item"><a
							class="textBox nav-link active text-light px-4 "
							aria-current="page" href="#">Flash sale</a></li>
						<li class="nav-item"><i
							class="iconBox bi bi-search nav-link active px-4 "
							style="color: white;" aria-current="page" href="#"></i></li>
						<li class="nav-item"><i
							class="iconBox bi bi-bag nav-link active px-4 "
							style="color: white;" aria-current="page" href="#"></i></li>
						<li class="nav-item"><i
							class="iconBox bi bi-person nav-link active px-4 "
							style="color: white;" aria-current="page" href="#"></i></li>
					</ul>


				</div>
			</div>
		</nav>

		<!-- <img src="https://images.unsplash.com/photo-1561154464-82e9adf32764?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60" class="card-img-top" alt="..."> -->

		</div>

	</header>
	<main style="background-color: #f5f5f7; padding-bottom: 70px;">
		<div class="container mt-5">

			<div class="row">
				<div class="col-sm-8 mt-5 bg-white text-white rounded">
					<div class="container">
						<div class="row pt-3">
							<div class="col-sm-2 mt-2 text-dark fw-bold">Hình ảnh</div>
							<div class="col-sm-4 mt-2 text-dark fw-bold">Tên Sản Phẩm</div>
							<div class="col-sm-3 mt-2 text-dark fw-bold">Giá Bán</div>
							<div class="col-sm-3 mt-2 text-dark fw-bold">Số Lượng</div>
						</div>
						<hr style="color: black;">
					</div>
					<c:set var="total" value="0"></c:set>
					<c:forEach var="item" items="${cart.product}">
						<c:set var="total" value="${total + item.price /1.5 * item.sl }"></c:set>
						<div class="container">
							<div class="row">
								<div class="col-sm-2 mt-2">
									<img class="" src="${item.image}" height="80px"
										width="80px">
								</div>
								<div class="col-4 mt-2 text-dark">
									<strong>${item.name}</strong>
								</div>
								<div class="col-3 mt-2 text-dark">
									<strong><fmt:formatNumber value="${item.price/1.5 * item.sl}" pattern="###,###,###" />đ</strong>
								</div>

								<div class="col-1 text-dark">
									<div class="row">
										<a class="col-3 ms-3 text-dark" style="text-decoration: none;"
											href="/update/iphone-${item.id}/them">+</a> <input type="text" value="${item.sl}"
											class="col-3  form-control" id="soluong" name="sl"
											padding="6px 10px 6px 16px"> <a
											class="col-3 ms-3 text-dark" style="text-decoration: none;"
											href="/update/iphone-${item.id}/xoa">-</a>
									</div>
								</div>
								<a class=" col-1 bi bi-trash text-dark mt-4" href="/remove/iphone-${item.id}""></a>
							</div>
							<hr>
						</div>
						</c:forEach>
						<div class="container">
							<div class="row">
								<div class="col-5"></div>
								<div class="col-7">
									<div class=" row container mt-3">
										<a href="/clear" class="col-5 btn btn-outline-primary">Clear
											</a>
										<div class="col-1"></div>
										<a href="/trang-chu" class=" col-5 btn btn-outline-primary">Tiếp
											tục mua sắm</a>


									</div>
								</div>
							</div>
						</div>
						<hr class="d-sm-none">
				</div>
				<div class="col-sm-3 mt-5 bg-white text-white offset-1">
					<input type="text" class="form-control mt-3"
						placeholder="Mã giảm giá">
					<div class="row">
						<div class="col-sm-6">
							<div class="text-muted mt-4">Tổng phụ thu:</div>
						</div>
						<div class="col-sm-6 text-dark">
							<div class="mt-4">
								<small>  <fmt:formatNumber value="${item.price/1.5 * item.sl}" pattern="###,###,###" />đ</small>
							</div>
						</div>
						<div class="col-sm-6 text-dark ">
							<div class="mt-4">
								<strong>Tổng tiền:</strong>
							</div>
						</div>
						<div class="col-sm-6 text-primary">
							<div class="mt-4">
								<strong><fmt:formatNumber value="${total}" pattern="###,###,###" />đ</strong>
								
							</div>
						</div>

					</div>
					<hr>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="check1"
							name="option1" value="something" checked> <label
							class="form-check-label text-dark">Tôi đã đọc và đồng ý
							với các điều khoản trên</label>
					</div>
					<div class="d-grid">
						<a  href="/confirmOder" type="button" class="btn btn-primary btn-block mt-3">Tiến
							hành đặt hàng</a>
					</div>

				</div>
			</div>
			
		</div>
		<div class="container"></div>

	</main>

</body>


<footer class="bg-dark">
	<div class="container" style="border-bottom: 1px solid #515154;">
		<div class="row">
			<div class="col-3 ">
				<div
					style="padding: 64px 0 21px 0; text-align: justify; font-size: 15px;">
					<div style="height: 315px; width: 294px; padding: 0 0 20px 0;">
						<img src="/image/0000242_Logos Desktop.png" alt="" height="47px"
							width="184px">
						<p class=" text-light pt-3 ">Năm 2020, ShopDunk trở thành đại
							lý ủy quyền của Apple. Chúng tôi phát triển chuỗi cửa hàng tiêu
							chuẩn và Apple Mono Store nhằm mang đến trải nghiệm tốt nhất về
							sản phẩm và dịch vụ của Apple cho người dùng Việt Nam.</p>
						<div class="row">
							<div class="col-3"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src="/image/Face.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src="/image/Tiktok.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src="/image/Zalo.png" alt="">
							</div>
							<div class="col-3 ms-2"
								style="height: 50px;; width: 50px; border-radius: 100%;">
								<img src="/image/Youtube.png" alt="">
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
				<img src="/image/Bocongthuong.png" alt="" height="42px"
					width="134px">
			</div>
		</div>
	</div>
</footer>

</html>