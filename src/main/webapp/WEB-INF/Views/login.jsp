<%@ include file="head.jsp"%>
<title>Login Page</title>
<body>
	<main>
		<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5 col-md-6 d-flex flex-column align-items-center justify-content-center p-2 m-2">

							<div class="card mb-3">

								<div class="card-body ">

									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
										<p class="text-center small">Enter your Email and password to login</p>
									</div>

									<form class="row g-3" action="login" method="post" novalidate>

										<div class="col-12">
											<label for="email" class="form-label">
												Your Email
												<span class="text-danger">*</span>
											</label>
											<div class="input-group ">
												<span class="input-group-text" id="inputGroupPrepend">
													<em class="ri-account-box-fill"></em>
												</span>
												<input type="text" name="email" class="form-control" id="yourEmail" placeholder="e.g. contact@resourcepool.com">
											</div>
										</div>

										<div class="col-12">
											<label for="password" class="form-label">
												Your Password
												<span class="text-danger">*</span>
											</label>
											<div class="input-group">
												<span class="input-group-text" id="inputGroupPrepend">
													<em class="ri-shield-keyhole-fill"></em>
												</span>
												<input type="password" name="password" class="form-control" id="yourPassword" placeholder="e.g. helloResourcePool@123">
											</div>
										</div>

										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Login</button>
										</div>
										<div class="col-12">
											<p class="small mb-0 d-flex justify-content-between">
												<a href="registration" class="text-decoration-underline fw-bold fs-6">Register Your Company</a>
												<a href="forgotPassword" class="text-decoration-underline fw-bold fs-6">Forget Password</a>
											</p>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>
</body>
<%@ include file="scriptFile.jsp"%>
</html>
