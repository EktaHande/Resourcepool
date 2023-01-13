<%@ include file="head.jsp"%>
<title>Reset Password</title>
<body>
	<div class="container">
		<div class="passwordChangedAlert" style="display: none;">
			<div class="d-flex justify-content-center">
				<div class="alert alert-success w-50 alert-dismissible fade show text-center m-5" role="alert">
					<h4 class="alert-heading">Your Password is changed Successfully</h4>
				</div>
			</div>
		</div>
		<section class="section min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 col-md-6 d-flex flex-column align-items-center justify-content-center ">

						<div class="card mb-3">

							<div class="card-body ">

								<div class="pt-4">
									<h4 class="text-primary fw-bolder text-center pb-0">Welcome to the ResourcePool,</h4>
									<h4 class="text-primary fw-bolder text-center pb-0">Please Change Your Password</h4>
								</div>
								<form class="row" action="resetPasswordForm" method="post" novalidate id="resetPasswordForm" autocomplete="off">
									<div class="d-flex justify-content-center m-1">
										<div class="col-10">
											<div class="mt-2">
												<label for="password">
													Enter Password
													<span class="text-danger">*</span>
												</label>
												<div class="col-12">
													<input type="text" name="password" class="form-control" id="password" placeholder="Enter Your Password">
												</div>
												<label id="password-error" class="error text-danger" for="password"></label>
											</div>
											<div class="mt-3">
												<label for="confirmPassword">
													Confirm Password
													<span class="text-danger">*</span>
												</label>
												<div class="col-12">
													<input type="text" name="confirmPassword" class="form-control" id="confirmPassword" placeholder="Enter Your Password again">
												</div>
												<label id="confirmPassword-error" class="error text-danger" for="confirmPassword"></label>
											</div>
										</div>
									</div>
									<div class="d-flex justify-content-center mt-3">
										<div class="col-10">
											<button class="btn btn-danger fw-bold me-2" type="submit">Reset Password</button>
											<a class="btn btn-secondary fw-bold ms-2" href="backToLogin">Home</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
<%@ include file="scriptFile.jsp"%>
</html>