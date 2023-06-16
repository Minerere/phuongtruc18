<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/foundation-sites@6.6.3/dist/css/foundation-float.min.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/combine/npm/slick-carousel@1.7.1/slick/slick.css,npm/slick-carousel@1.7.1/slick/slick-theme.css'><link rel="stylesheet" href="css/productDetails.css">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="/css/iPhone.css">
<link rel="stylesheet" href="/css/Trang chu.css">
<script src="Trang chủ.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous">
	
</script>
<script src='https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/slick-carousel@1.7.1/slick/slick.js'></script>
<script src="JS/script.js"></script>
</head>

<body ng-app="myapp">
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
									class="bi bi-person login-icon nav-link active px-4 "
									style="color: white; font-size: 20px" aria-current="page" href="#" >
									
								</i></li>
							</div>
					</ul> 	


				</div>
			</div>
		</nav>


		</div>

	</header>
	<main>
	<div class="row">
	<div class="col-6">
		<div class="cSlider cSlider--single">
			<div class="cSlider__item"><img src="${image.image1}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image2}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image3}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image4}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image5}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image6}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image7}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image8}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image9}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image10}" alt=""></div>
		
		</div>
		<div class="cSlider cSlider--nav">
			<div class="cSlider__item"><img src="${image.image1}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image2}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image3}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image4}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image5}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image6}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image7}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image8}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image9}" alt=""></div>
			<div class="cSlider__item"><img src="${image.image10}" alt=""></div>
		</div>
	</div>


	
			<div class="col-6">
				<h2>${product.name}</h2>
				<i class="text-warning bi bi-star"></i> <i
					class="text-warning bi bi-star"></i> <i
					class="text-warning bi bi-star"></i> <i
					class="text-warning bi bi-star"></i> <i
					class="text-warning bi bi-star"></i> <small class="text-primary">3
					đánh giá </small>
				<h3>
					<fmt:formatNumber value="${product.price/1.5}" pattern="###,###,###" />
					đ
				</h3>
				<div class="fakeimg">Dung Lượng</div>
				<div class="">
					<button type="button" class="btn btn-secondary">128GB</button>
					<button type="button" class="btn btn-secondary">256GB</button>
					<button type="button" class="btn btn-secondary">512GB</button>
					<button type="button" class="btn btn-secondary">1TB</button>
				</div>
				<div class="pt-3">
					<div class="card">
						<div class="card-header">
							KHUYẾN MÃI
							<div class="form-check mt-3">
								<input type="checkbox" class="form-check-input" id="check1"
									name="option1" value="something" checked> <label
									class="form-check-label" for="check1">MUA THẲNG</label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="check2"
									name="option2" value="something"> <label
									class="form-check-label" for="check2">TRẢ GÓP </label>
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="check2"
									name="option2" value="something"> <label
									class="form-check-label" for="check2">ƯU ĐÃI </label>
							</div>
						</div>
						<div class="card-footer">
							Giới thiệu
							<h5>iPad Pro M2 12.9” được trang bị công nghệ Liquid Retina
								XDR, tích hợp tới 10,000 đèn LED mini, chia thành 2500 vùng rải
								rác khắp màn hình. Tùy thuộc vào nội dung hiển thị mà độ
								sáng/tối của từng vùng có thể thay đổi, tạo nên sự tương phản
								màu sắc chân thực và phong phú. làm rất tốt trong việc mang đến
								chất lượng hiển thị mượt mà và sống động cho iPad Pro M2. Đây
								vẫn là ưu điểm lý tưởng dành cho những ai làm đồ họa chuyên
								nghiệp, thường xuyên phải chỉnh sửa hình ảnh/video hoặc chỉ đơn
								giản là muốn thưởng thức những bộ phim yêu thích.</h5>
						</div>
					</div>
				</div>

				<a href="/add/iphone-${product.id}" class="d-grid pt-4">
					<button type="button" class="btn btn-primary btn-block">MUA
						NGAY</button>
				</a>
				<div class="row">
					<div class="col-sm-6">
						<div class="d-grid pt-4">
							<button type="button" class="btn btn-outline-primary">ƯU
								ĐÃI</button>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="d-grid pt-4">
							<button type="button" class="btn btn-outline-primary">TRẢ
								GÓP</button>
						</div>
					</div>
				</div>
			
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
<script src='https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/slick-carousel@1.7.1/slick/slick.js'></script><script  src="/JS/script.js"></script>

</html>