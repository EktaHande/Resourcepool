<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<%@include file="indexcss.jsp"%>
<link href="assets/css/registration.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<section
			class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
			<div class="container">
				<div class="row justify-content-center">
					<div
						class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
						<div class="d-flex justify-content-center py-4">
							<a href="index.html"
								class="logo d-flex align-items-center w-auto"> <img
								src="assets/img/logo.png" alt=""> <span
								class="d-none d-lg-block">ResourcePool</span>
							</a>
						</div>
						<div class="card mb-3">
							<div class="card-body">
								<div class="pt-4 pb-2">
									<h5 class="card-title text-center pb-0 fs-4">Company Registration</h5>
									<p class="text-center small">Enter your company details to
										create account</p>
								</div>
								<form class="row g-3" novalidate>
									<div class="col-12">
										<label for="companyName" class="form-label">Company Name</label>
										 <input
											type="text" name="companyName" class="form-control" id="companyName"
											required>
								    	<label for="companyName" class="error"></label>
									</div>
									<div class="col-12">
										<label for="companyEmail" class="form-label">Company Email</label>
										 <input
											type="email" name="companyEmail" class="form-control" id="companyEmail"
											required>
										<label for="companyEmail" class="error"></label>
									</div>
								
									<div class="col-12">
										<label for="companyPassword" class="form-label">Password</label>
										<input type="password" name="companyPassword" class="form-control"
											id="companyPassword" required>
										<label class="error" for="companyPassword"></label>
									</div>
									<div class="row d-flex mt-3">
									<div class="col-6">
										<button class="btn btn-primary w-100" type="submit">Register
											</button>
									</div>
									<div class="col-6">
												<button class="btn btn-secondary w-100" type="button" id="cancel">Cancel</button>
											</div>
									</div>
									<div class="col-12">
										<p class="small mb-0">
											Already have an account? <a href="logged">Log
												in</a>
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
<script type="text/javascript" src="assets/js/JQ.js"></script>
<script type="text/javascript" src="assets/js/JQV.js"></script>		
<script type="text/javascript" src="assets/js/JQAV.js"></script>
<script type="text/javascript" src="assets/js/validation.js"></script>
</body>
</html>