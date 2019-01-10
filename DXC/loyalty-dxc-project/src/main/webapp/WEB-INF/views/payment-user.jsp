<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:wicket>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Buy Cheap Fashion Clothes Online</title>

<!-- Bootstrap core CSS-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" />

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.css" rel="stylesheet">

<!-- Page level plugin CSS-->
<link
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">



<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
<link href="css/checkout-product.css" rel="stylesheet">
<link href="css/product-manage.css" rel="stylesheet">
<link href="css/detail-order-guest.css" rel="stylesheet">



</head>

<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<!-- <a class="navbar-brand mr-1" href="#">Start Bootstrap</a> -->

		<a class="navbar-brand" href="#"> <img src="img/logo-myshop.JPG"
			class="img-logo">
		</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive"></div>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="/home">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="/user-news">News</a></li>
			<li class="nav-item"><a class="nav-link"
				href="javascript:AlertIt();" id="login">Login</a></li>
			<li class="nav-item">
				<form
					class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
					<div class="input-group">
						<input type="text" class="form-control"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search"></i>
							</button>
						</div>
					</div>
				</form>
			</li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-shopping-cart fa-lg"></i></a></li>

		</ul>


		</div>

		<!-- Navbar Search -->


		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">

			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a href="#editAccountModal" class="dropdown-item"
						data-toggle="modal">Account</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Logout</a>
				</div></li>
		</ul>

	</nav>


	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<c:forEach items="${productgrps}" var="productgrps">
				<li class="nav-item"><a class="nav-link" href="#"> <span>${productgrps.prodgrpname}</span></a></li>
			</c:forEach>
		</ul>

		<div id="content-wrapper">

			<div class="container-fluid">
				<!-- start detail order -->
				<h2>PAYMENT</h2>

				<div class="row">
					<div class="col-75">
						<div class="container">
							<form action="/payment/save" method="post">

								<div class="row">
									<div class="col-50">
										<h3>Address Infomation</h3>
										<label for="fname"><i class="fa fa-user"></i> Full
											Name</label> <input type="text" id="fname" name="fullname"
											placeholder="John M. Doe"> <label for="email"><i
											class="fa fa-envelope"></i> Email</label> <input type="text"
											id="email" name="email" placeholder="john@example.com">
										<label for="adr"><i class="fa fa-address-card-o"></i>
											Address</label> <input type="text" id="adr" name="address"
											placeholder="542 W. 15th Street"> <label
											for="cellphone"><i class="fas fa-mobile-alt"></i>
											Cellphone</label> <input type="text" id="cellphone" name="cellphone"
											placeholder="01234567789">



									</div>

									<div class="col-50">
										<h3>Payment Method</h3>
										<c:forEach items="${paymentmethod}" var="paymentmethods">
											<div class="radio">
												<label><input type="radio"
													name="methodPayment.methodid"
													value="${paymentmethods.methodid}">${paymentmethods.methodname}</label>
											</div>
										</c:forEach>
									</div>
								</div>

								<!--  -->
								<div class="table-title" style="margin-top: 15px;">
									<div class="row">
										<div class="col-sm-6">
											<h2>
												Detail <b>Product</b>
											</h2>
										</div>

									</div>
								</div>
								<table class="table table-striped table-hover">
									<thead>
										<tr>
											<th><span class="custom-checkbox"> <input
													type="checkbox" id="selectAll"> <label
													for="selectAll"></label>
											</span></th>
											<th>Product ID</th>
											<th>Product name</th>
											<th>Image</th>
											<th>Trademark</th>
											<th>Fabric</th>
											<th>Size</th>
											<th>Price</th>
											<th>Discount</th>
											<th>Catalog</th>
											<th>Amount</th>
											<th>Actions</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach items="${prdPayment }" var="prdPayment">
											<tr>
												<td><span class="custom-checkbox"> <input
														type="checkbox" id="checkbox5" name="options[]" value="1">
														<label for="checkbox5"></label>
												</span></td>
												<td>${prdPayment.prodid}</td>
												<td>${prdPayment.prodname}</td>
												<td><img class="img-product"
													src="data:image/jpg;base64,${prdPayment.base64}"></td>
												<td>${prdPayment.brand}</td>
												<td>${prdPayment.fabric}</td>
												<td>M</td>
												<td>$<span id="price">${prdPayment.price}</span></td>
												<td><span id="discount">${prdPayment.promotion.persdisc}</span></td>
												<td>${prdPayment.productGrp.prodgrpname}</td>
												<td>1</td>
												<td><a href="#" class="delete"><i
														class="material-icons" data-toggle="tooltip"
														title="Delete">&#xE872;</i></a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="order-bill">
									<div class="detail-order-bill">
										<div class="row-inf">
											<span class="lbl">Total Money:(đ)</span><span class="fee">
											</span> <input type="hidden" name="total_money" id="result">

										</div>
										<div class="row-inf last-child">
											<span class="lbl"><b>Payment:</b> </span> <span class="fee"><b>90$</b>
											</span>
										</div>
									</div>

								</div>
								<button type="button" class="btn btn-primary"
									style="margin-left: 400px; width: 150px;"
									onclick="location.href='/home';">Buy Next</button>
								<button type="submit" class="btn btn-success"
									style="width: 150px;" onclick="location.href='javascript:AlertBackHome;';">Complete</button>
								<!-- AlertBackHome -->
							</form>
							<!-- start  product-->
							<div class="table-wrapper">

								<!--  table-->

								<!--  table-->
								<div class="clearfix">
									<div class="hint-text">
										Showing <b>5</b> out of <b>25</b> entries
									</div>
									<ul class="pagination">
										<li class="page-item disabled"><a href="#">Previous</a></li>
										<li class="page-item"><a href="#" class="page-link">1</a></li>
										<li class="page-item"><a href="#" class="page-link">2</a></li>
										<li class="page-item active"><a href="#"
											class="page-link">3</a></li>
										<li class="page-item"><a href="#" class="page-link">4</a></li>
										<li class="page-item"><a href="#" class="page-link">5</a></li>
										<li class="page-item"><a href="#" class="page-link">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /.container-fluid -->
					<!-- end checkout product -->
				</div>
				<!--  total and button -->

			</div>
			<!-- /.container-fluid -->
			<!-- Sticky Footer -->
			<footer class="sticky-footer">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright Â© My Shop-LeThaiDuy, All rights reserved</span>
					</div>
				</div>
			</footer>

		</div>
		<!-- /.content-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="vendor\datatables\jquery.dataTables.js"></script>
	<script src="vendor\datatables\dataTables.bootstrap4.js"></script>


	<!-- Custom scripts for all pages-->
	<script src="js\myshop-admin.js"></script>
	<script src="js\quanity-input.js"></script>

	<!--  -->
	<script>
		$(document).ready(function() {
			$('#dataTable').DataTable();

		});
		$('.table tbody').on('click', '.delete', function() {
			$(this).closest('tr').remove();
		});
		var sum = 0;
		var dc = $('#discount').text();
		$('#price').each(function() {
			sum += +($(this).text() - ($(this).text() * dc / 100)) || 0;
		});

		$(".fee").text(sum);
		$("#result").val(sum);
	</script>
	<script type="text/javascript">
		function AlertIt() {
			var answer = confirm("This function is for admin.Please click on OK to continue.")
			if (answer)
				window.location = "/login-admin";
		}
		function AlertBackHome() {
			var answer = confirm("Are you want order product?")
			if (answer)
				window.location = "/home";
		}
	</script>
</body>

</html>