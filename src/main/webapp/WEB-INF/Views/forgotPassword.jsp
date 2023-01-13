<%@ include file="head.jsp"%>
<title>Login Page</title>
<body>
	<div class="container">
		<div class="emailSentAlert" style="display: none;">
			<div class="d-flex justify-content-center">
				<div class="alert alert-success w-50 alert-dismissible fade show text-center m-5" role="alert">
					<h4 class="alert-heading">Successfully Sent E-mail</h4>
					<p>An email has been sent to your registered email account for Password reset. Please check your E-mail and Reset the Password from there.</p>
				</div>
			</div>
		</div>
		<section class="section min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center p-2 m-2">
						<div class="card mb-3">
							<div class="card-body ">
								<div class="pt-4 pb-2">
									<h5 class="text-warning fw-bolder text-center pb-0 fs-2">Forget Your Password?</h5>
								</div>
								<p class="fs-6 fw-normal">Enter your Email Id and click on "Reset Password"</p>
								<form class="row g-3" action="forgotPasswordForm" method="post" novalidate id="forgotPasswordForm" autocomplete="off">
									<div class="col-12">
										<div class="input-group">
											<span class="input-group-text" id="inputGroupPrepend">
												<em class="ri-account-box-fill"></em>
											</span>
											<input type="text" name="email" class="form-control" placeholder="Enter Your Email Id">
										</div>
										<label id="yourEmail-error" class="error text-danger" for="yourEmail"></label>
									</div>
									<div class="d-flex justify-content-around">
										<button class="btn btn-danger fw-bold w-50" type="submit">Reset Password</button>
										<a class="btn btn-secondary fw-bold w-25" href="backToLogin">Back</a>
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