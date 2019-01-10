<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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
	href="vendor/datetimepicker/jquery.datetimepicker.min.css">

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

			<%-- 	<div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="container">
						<div class="table-wrapper">
							<div class="table-title">
								<div class="row">
									<div class="col-sm-6">
										<h2>
											Manage <b>News</b>
										</h2>
									</div>
									<div class="col-sm-6">
										<a href="#addNewsModal" class="btn btn-success"
											data-toggle="modal"><i class="material-icons">&#xE147;</i>
											<span>Add New News</span></a> <a href="#deleteNewsModal"
											class="btn btn-danger" data-toggle="modal"><i
											class="material-icons">&#xE15C;</i> <span>Delete</span></a>
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
										<th>News ID</th>
										<th>Title</th>
										<th>Image Date</th>
										<th>Date submit</th>
										<th>Detail</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${news}" var="listnews">
										<tr>
											<td><span class="custom-checkbox"> <input
													type="checkbox" id="checkbox5" name="options[]" value="1">
													<label for="checkbox5"></label>
											</span></td>
											<td>${listnews.newsid}</td>
											<td>${listnews.title}</td>
											<td><img src="data:image/jpg;base64,${listnews.base64}"
												class="img-news"></td>
											<td>${listnews.dateSub}</td>
											<td>${listnews.detail}</td>
											<td><a href="#editNewsModal" class="edit"
												data-news-id="${listnews.newsid}"
												data-title-todo="${listnews.title}"
												data-datesub-todo="${listnews.dateSub}"
												data-todo-dateSub="${listnews.dateSub}"
												data-detail-todo="${listnews.detail}" data-toggle="modal"><i
													class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
												<a href="/news/delete/${listnews.newsid}" class="delete"><i
													class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav>
						</div> --%>
			<div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fas fa-table"></i> Manage News
					</div>
					<!--  -->
					<div class="card-header">
						<a href="#addNewsModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
								New News</span></a>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>News ID</th>
										<th>Title</th>
										<th>Image Date</th>
										<th>Date submit</th>
										<th>Detail</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${news}" var="listnews">
										<tr>
											<td>${listnews.newsid}</td>
											<td>${listnews.title}</td>
											<td><img src="data:image/jpg;base64,${listnews.base64}"
												class="img-news"></td>
											<td>${listnews.dateSub}</td>
											<td>${listnews.detail}</td>
											<td><a href="#editNewsModal" class="edit"
												data-news-id="${listnews.newsid}"
												data-title-todo="${listnews.title}"
												data-datesub-todo="${listnews.dateSub}"
												data-todo-dateSub="${listnews.dateSub}"
												data-detail-todo="${listnews.detail}" data-toggle="modal"><i
													class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
												<a href="/news/delete/${listnews.newsid}" class="delete"><i
													class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
				<!-- Add Modal HTML -->
				<div id="addNewsModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="/news/save" method="POST"
								enctype="multipart/form-data">
								<div class="modal-header">
									<h4 class="modal-title">Add News</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Title</label> <input type="text" class="form-control"
											name="title" required>

									</div>
									<div class="form-group">
										<label>Image</label> <input type="file" class="form-control"
											name="images">
									</div>
									<div class="form-group">
										<label>Date submit</label> <input type="text"
											id="datetimepicker" class="form-control" name="dateSub">
									</div>
									<div class="form-group">
										<label>Detail</label>
									</div>
									<textarea class="text-area" name="detail"></textarea>
								</div>
								<div class="modal-footer">
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Cancel"> <input
										type="submit" class="btn btn-success" value="Add">
								</div>
							</form>
						</div>
					</div>
				</div>
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
				<!-- Edit Modal HTML -->
				<div id="editNewsModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="/news/update" method="POST"
								enctype="multipart/form-data">
								<div class="modal-header">
									<h4 class="modal-title">Edit News</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>

								<div class="modal-body">
									<div class="form-group">
										<label>Title ID </label> <input type="text" name="newsid"
											id="newsid" class="form-control">

									</div>
									<div class="form-group">
										<label>Title</label> <input type="text" class="form-control"
											name="title" required>

									</div>
									<div class="form-group">
										<label>Image</label> <input type="file" class="form-control"
											name="images">
									</div>
									<div class="form-group">
										<label>Date submit</label> <input type="text" name="dateSub"
											id="datetimepicker1" class="form-control">
									</div>
									<div class="form-group">
										<label>Detail</label>
									</div>
									<textarea class="text-area" name="detail"></textarea>
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
				<div id="deleteNewsModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form>
								<div class="modal-header">
									<h4 class="modal-title">Delete News</h4>
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
	<script>
			
		</script>

	<!-- Bootstrap core JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="https://cdn.ckeditor.com/4.10.1/standard/ckeditor.js"></script>
	<script src="vendor/datetimepicker/jquery.datetimepicker.full.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/myshop-admin.js"></script>
	<script src="js/product-manage.js"></script>


	<!--  -->
	<script>
			
		</script>
	<script>
			$(document).ready(
					function() {
						$('#dataTable').DataTable();
						$('#datetimepicker').datetimepicker({
							minDate: -1
						});
						$('#datetimepicker1').datetimepicker();
						$('#editNewsModal')
								.on(
										'show.bs.modal',
										function(e) {
											var newsId = $(e.relatedTarget)
													.data('news-id');
											var title = $(e.relatedTarget)
													.data('title-todo');
											var dateSub = $(e.relatedTarget)
													.data('datesub-todo');
											var detail = $(e.relatedTarget)
													.data('detail-todo');

											$(e.currentTarget).find(
													'input[name="newsid"]')
													.val(newsId);
											$(e.currentTarget).find(
													'input[name="title"]').val(
													title);
											$(e.currentTarget).find(
													'input[name="dateSub"]')
													.val(dateSub);
											$(e.currentTarget).find(
													'textarea[name="detail"]')
													.val(detail);

										});
						/* $( "#newsid" ).prop( "disabled", true ); */

					});
			document.getElementById('newsid').readOnly = true;
		</script>
</body>

</html>