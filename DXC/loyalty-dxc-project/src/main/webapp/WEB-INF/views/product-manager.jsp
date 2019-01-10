<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />



<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
<link href="css/product-manage.css" rel="stylesheet">

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
			<li class="nav-item"><a class="nav-link" href="\promotion"> <i
					class="fas fa-percentage"></i> <span>Promotion Manager</span></a></li>
			<li class="nav-item"><a class="nav-link" href="#"> <i
					class="fas fa-unlock"></i> <span>Role Manager</span></a></li>
		</ul>
		<div id="content-wrapper">


			<div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Manage Product
					</div>
					<!--  -->
					<div class="card-header">
						<a href="#addProductModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
								New Product</span></a>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>Product ID</th>
										<th>Product name</th>
										<th>Price</th>
										<th>Point</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${product}" var="product">
										<tr>
											<td>${product.prodid}</td>
											<td>${product.name}</td>
											<td>${product.price}</td>
											<td>${product.point}</td>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>

	<script>
		$(document)
				.ready(
						function() {
							$('#dataTable').DataTable();
							$('select').selectpicker({
								minDate:-1
							});
							$('#editProductModal')
									.on(
											'show.bs.modal',
											function(e) {
												var prodId = $(e.relatedTarget)
														.data('product-id');
												var prodName = $(
														e.relatedTarget).data(
														'product-name-todo');
												var brand = $(e.relatedTarget)
														.data('brand-todo');
												var fabric = $(e.relatedTarget)
														.data('fabric-todo');
												var price = $(e.relatedTarget)
														.data('price-todo');
												var quantity = $(
														e.relatedTarget).data(
														'quantity-todo');
												var catalog = $(e.relatedTarget)
														.data('catalog-todo');

												$(e.currentTarget).find(
														'input[name="prodid"]')
														.val(prodId);
												$(e.currentTarget)
														.find(
																'input[name="prodname"]')
														.val(prodName);
												$(e.currentTarget).find(
														'input[name="brand"]')
														.val(brand);
												$(e.currentTarget).find(
														'input[name="fabric"]')
														.val(fabric);
												$(e.currentTarget).find(
														'input[name="price"]')
														.val(price);
												$(e.currentTarget)
														.find(
																'input[name="quantity"]')
														.val(quantity);
												$(e.currentTarget)
														.find(
																'select[name="productGrp.prodgrpid"]')
														.val(catalog);

											});
						});
		document.getElementById('prodid').readOnly = true;
	</script>

</body>

</html>