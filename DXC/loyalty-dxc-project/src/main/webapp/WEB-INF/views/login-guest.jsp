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

<title>Shop Home Page</title>

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


<!-- Custom styles for this template-->
<link href="css/main-admin.css" rel="stylesheet">
<link href="css/product-manage.css" rel="stylesheet">


</head>

<body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

        <!-- <a class="navbar-brand mr-1" href="#">Start Bootstrap</a> -->

        <a class="navbar-brand" href="#">
            <img src="img/logo-myshop.JPG" class="img-logo">
        </a>

      
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home
                    <span class="sr-only">(current)</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">News</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#addCustomerModal" data-toggle="modal"> <span>
                    Register</span></a>
            </li>
           
    
            <li class="nav-item">
                <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search for..." aria-label="Search"
                            aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fa fa-shopping-cart fa-lg"></i></a>
            </li>

        </ul>


        </div>


	

		<!-- Navbar -->
	
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

	

		<div id="content-wrapper">

			<%-- <div class="container-fluid">
				<!-- DataTables Example -->
				<div class="card mb-3">
					<div class="container">
						<div class="table-wrapper">
							<div class="table-title">
								<div class="row">
									<div class="col-sm-6">
										
									</div>
									<div class="col-sm-6">
										<a href="#addCustomerModal" class="btn btn-success"
											data-toggle="modal"><i class="material-icons">&#xE147;</i>
											<span>Add New Custmer </span></a> <a href="#deleteCustomerModal"
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
										<th>AccountID</th>
										<th>Name</th>
										<th>Address</th>
										<th>Email</th>
										<th>CellPhone</th>
										
										<th>UserName</th>
										<th>Password</th>
										<th>CheckAdmin</th>
										<th>Point</th>
										<th>Acction</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${Account}" var="accounts">
										<tr>
											<td><span class="custom-checkbox"> <input
													type="checkbox" id="checkbox5" name="options[]" value="1">
													<label for="checkbox5"></label>
											</span></td>
											<td>${Account.accountid}</td>
											<td>${Account.name}</td>
											<td>${Account.address}</td>
											<td>${Account.email}</td>
											<td>${Account.cellphone}</td>
											<td>${Account.point}</td>
											<td>${Account.username}</td>
											<td>${Account.password}</td>
											<td>${Account.checkadmin}</td>
											<td><a href="#editCustomerModal" class="edit"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="Edit">&#xE254;</i></a><a
												href="/customer/delete/${accounts.accountid}" class="delete"><i
													class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						
						</div>
					</div> --%>
			<div class="container-fluid">
				<!-- DataTables Example -->
				
				
				<!-- Add Modal HTML -->
				<div id="addCustomerModal" class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="/createaccount/save" method="POST">
								<div class="modal-header">
									<h4 class="modal-title"> Register</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label>Name</label> <input type="text"
											class="form-control" name="name" required>
									</div>
									<div class="form-group">
										<label>Address</label> <input type="text" class="form-control"
											name="address" equired>
									</div>
									<div class="form-group">
										<label>CellPhone</label> <input type="text"
											class="form-control" name="cellphone" required>
									</div>
									<div class="form-group">
										<label>Email</label> <input type="email" class="form-control"
											name="email" required>
									</div>
									<div class="form-group">
										<label>UserName</label> <input type="username" class="form-control"
											name="username" required>
									</div>
									<div class="form-group">
										<label>Password</label> <input type="password" class="form-control"
											name="password" required>
									</div>
									
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
								
		<!-- /.container-fluid -->

		<!-- Sticky Footer -->
		<footer class="sticky-footer">
			<div class="container my-auto">
				<div class="copyright text-center my-auto">
					<span>Copyright Pham Thanh Tung, All rights reserved</span>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>



	<!-- Custom scripts for all pages-->
	<script src="js/myshop-admin.js"></script>
	<script src="js/product-manage.js"></script>

	<!--  -->
	<script>
		$(document).ready(
				function() {
					$('#dataTable').DataTable();
					$('#editCustomerModal').on(
							'show.bs.modal',
							function(e) {
								var cusid = $(e.relatedTarget).data(
										'customer-id');
								var cusName = $(e.relatedTarget).data(
										'customer-name-todo');
								var address = $(e.relatedTarget).data(
										'address-todo');
								var email = $(e.relatedTarget).data(
										'email-todo');
								var cellphone = $(e.relatedTarget).data(
										'cellphone-todo');
								$(e.currentTarget).find(
										'input[name="customerid"]').val(cusid);
								$(e.currentTarget).find(
										'input[name="name"]').val(cusName);
								$(e.currentTarget)
										.find('input[name="address"]').val(
												address);
								$(e.currentTarget).find(
										'input[name="cellphone"]').val(
										cellphone);
								$(e.currentTarget).find('input[name="email"]')
										.val(email);
							});
				});
		document.getElementById('accountid').readOnly = true;
	</script>

</body>

</html>