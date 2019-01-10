<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>MyShop Admin - Dashboard</title>

<!-- Bootstrap core CSS-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.6.2/css/bootstrap-select.min.css"
	rel="stylesheet">

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.css" rel="stylesheet">

<!-- Page level plugin CSS-->
<link
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" />



<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
<link href="css/product-manage2.css" rel="stylesheet">

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

		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search for..."
					aria-label="Search" aria-describedby="basic-addon2">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</form>

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
					<!-- <a class="dropdown-item" href="#">Activity Log</a> -->
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
			<li class="nav-item"><a class="nav-link" href="\product"> <i
					class="fas fa-box-open"></i> <span>Product Manager</span></a></li>
			<li class="nav-item"><a class="nav-link" href="\news"> <i
					class="fas fa-newspaper"></i> <span>News Manager</span></a></li>
			<li class="nav-item"><a class="nav-link" href="\customer"> <i
					class="fas fa-user"></i> <span>Customer Manager</span></a></li>
			<li class="nav-item"><a class="nav-link" href="\order"> <i
					class="fas fa-fw fa-table"></i> <span>Order Manager</span></a></li>
			<li class="nav-item"><a class="nav-link" href="\promotion">
					<i class="fas fa-percentage"></i> <span>Promotion Manager</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-unlock"></i> <span>Role Manager</span></a></li>
		</ul>

		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Manage Order
					</div>
					<!--  -->
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Order ID</th>
										<th>Date Order</th>
										<th>Customer Name</th>
										<th>Address</th>
										<th>CellPhone</th>
										<th>Email</th>
										<th>Sum Money</th>
										<th>Payment Method</th>
										<th>Status</th>
										<th>Action</th>
										<th>Detail Product</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orders}" var="orders">
										<tr>
											<td>${orders.orderid}</td>
											<td>${orders.date_order}</td>
											<td>${orders.customer.fullname}</td>
											<td>${orders.customer.address}</td>
											<td>${orders.customer.cellphone}</td>
											<td>${orders.customer.email}</td>
											<td>${orders.total_money}</td>
											<td><select class="form-control-combobox">
													<option value="">${orders.status}</option>

											</select></td>
											<td>${orders.methodPayment.methodname}</td>
											<td><a href="#editOrderModal" class="edit"
												data-order-id="${orders.orderid}"
												data-dateorder-todo="${orders.date_order}"
												data-fullname-todo="${orders.customer.fullname}"
												data-address-todo="${orders.customer.address}"
												data-cellphone-todo="${orders.customer.cellphone}"
												data-email-todo="${orders.customer.email}"
												data-money-todo="${orders.total_money}" data-toggle="modal"><i
													class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
												<a href="#" class="delete"><i class="material-icons"
													data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
											<td><a href="#detailProductModal" data-toggle="modal"><i
													class="fas fa-info-circle"></i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				<!-- Edit Account -->
				<div id="editAccountModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Change Infomation</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>

								<div class="modal-body">
									<div class="form-group">
										<label>ID</label> <input type="text" class="form-control"
											disabled>
									</div>
									<div class="form-group">
										<label>User Name</label> <input type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Confirm Password</label> <input type="password"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Full Name</label> <input type="text"
											class="form-control" required>
									</div>
									<div class="form-group">
										<label>Address</label> <input type="text" class="form-control"
											required>
									</div>
									<div class="form-group">
										<label>Email</label> <input type="email" class="form-control"
											required>
									</div>
									<div class="form-group">
										<label>Cell phone</label> <input type="text"
											class="form-control" required>
									</div>

								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-info" value="Save">
								</div>
							</form>
						</div>
					</div>
				</div>
				<!--  Detail Modaill Product-->
				<div id="detailProductModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Change Infomation</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>

								<div class="modal-body">
									<div class="table-responsive">
										<table class="table table-hover shopping-cart-wrap">
											<thead class="text-muted">
												<tr>
													<th scope="col">Product</th>
													<th scope="col" width="120">Quantity</th>
													<th scope="col" width="120">Price</th>
													<th scope="col" width="200" class="text-right">Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<c:forEach items="${products}" var="products">
														<td>
															<figure class="media">
																<div class="img-wrap">
																	<img src="data:image/jpg;base64,${products.base64}"
																		style="width: 100px; height: 200px;">
																</div>
																<figcaption class="media-body">
																	<h6 class="title text-truncate">${products.prodname}</h6>
																	<dl class="param param-inline small">
																		<dt>Size:</dt>
																		<dd>M</dd>
																	</dl>
																</figcaption>
															</figure>
														</td>
														<td><select class="form-control" style="width:100px;">
																<option>1</option>
																<option>2</option>
																<option>3</option>
																<option>4</option>
														</select></td>
														<td>
															<div class="price-wrap">
																<var class="price">${products.price}</var>
															</div> <!-- price-wrap .// -->
														</td>
														<td class="text-right">
															<!-- <a title="" href="" class="btn btn-outline-success" data-toggle="tooltip" data-original-title="Save to Wishlist"> <i class="fa fa-heart"></i></a>  -->
															<a href="" class="btn btn-outline-danger btn-round">
																× Remove</a>
														</td>

													</c:forEach>

												</tr>

											</tbody>
										</table>

									</div>
									<!-- card.// -->


									<!-- end detail cart -->
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-info" value="Save">
								</div>
							</form>
						</div>
					</div>
				</div>

				<!-- Edit Modal HTML -->
				<div id="editOrderModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="/order/update" method="POST">
								<div class="modal-header">
									<h4 class="modal-title">Edit Order</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>

								<div class="modal-body">
									<div class="form-group">
										<label>Order ID </label> <input type="text" name="orderid"
											id="orderid" class="form-control">

									</div>
									<div class="form-group">
										<label>Date Order</label> <input type="text"
											class="form-control" name="date_order" required
											disabled="disabled">

									</div>
									<div class="form-group">
										<label>Customer Name</label> <input type="text"
											class="form-control" name="fullname" disabled="disabled">
									</div>
									<div class="form-group">
										<label>Address</label> <input type="text" name="address"
											class="form-control" disabled="disabled">
									</div>
									<div class="form-group">
										<label>Cellphone</label> <input type="text" name="cellphone"
											class="form-control" disabled="disabled">
									</div>
									<div class="form-group">
										<label>Email</label> <input type="text" name="email"
											class="form-control" disabled="disabled">
									</div>
									<div class="form-group">
										<label>Status</label> <select class="form-control"
											name="status" id="exampleFormControlSelect1">

											<option value="Đã xữ lý">Đã xữ lý</option>
											<option value="Chưa xữ lý">Chưa xữ lý</option>
											<option value="Hủy">Hủy</option>

										</select>
									</div>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-info" value="Save">
								</div>

							</form>


						</div>
					</div>
				</div>
				<!-- Delete Modal HTML -->
				<div id="deleteOrderModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Delete Product</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<p>Are you sure you want to delete these Records?</p>
									<p class="text-warning">
										<small>This action cannot be undone.</small>
									</p>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-danger" value="Delete">
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>
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
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="https://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/myshop-admin.js"></script>
	<script src="js/product-manage.js"></script>


	<!--  -->
	<script>
		$(document).ready(
				function() {
					$('#dataTable').DataTable();
					$('#editOrderModal')
							.on(
									'show.bs.modal',
									function(e) {
										var orderId = $(e.relatedTarget).data(
												'order-id');
										var dateorder = $(e.relatedTarget)
												.data('dateorder-todo');
										var fullname = $(e.relatedTarget).data(
												'fullname-todo');
										var address = $(e.relatedTarget).data(
												'address-todo');
										var cellphone = $(e.relatedTarget)
												.data('cellphone-todo');
										var email = $(e.relatedTarget).data(
												'email-todo');

										$(e.currentTarget).find(
												'input[name="orderid"]').val(
												orderId);
										$(e.currentTarget).find(
												'input[name="date_order"]')
												.val(dateorder);
										$(e.currentTarget).find(
												'input[name="fullname"]').val(
												fullname);
										$(e.currentTarget).find(
												'input[name="address"]').val(
												address);
										$(e.currentTarget).find(
												'input[name="cellphone"]').val(
												cellphone);
										$(e.currentTarget).find(
												'input[name="email"]').val(
												email);

									});
					document.getElementById('orderid').readOnly = true;
				});
	</script>

</body>

</html>