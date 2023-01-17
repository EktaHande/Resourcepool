<%@include file="commonUpper.jsp"%>
<link href="assets/css/manageCompany.css" rel="stylesheet">
<main class="main">
	<div class="">
		<div class="card-body">
			<form id="manageCompanyDetails" action="#">
				<div class="row p-0 m-0 justify-content-between">
					<div class="col-sm-2 d-flex flex-column custome-h justify-content-around wizard">
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Company Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Address Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Contact Details</strong></label> 
							<span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex  text-secondary">
							<label for="" class="col-9"> <strong>GST Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Bank Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Upload Documents</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
					</div>
				
					<div class="col-sm-10 d-flex justify-content-between card p-3" id="formDiv">

						<h3 class="text-center">Manage Company Details</h3>
						<div class="tab">
							<h5 class="text-left ms-3">Company Details:</h5>
							<div class="container mt-3">
								<div class="row">
									<div class="col-3 ">
										<label for="companyName"> Company Name <span class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input placeholder="Company Name" name="companyName" class="form-control" id="companyName"> 
								      <label for="companyName" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="companyEmail"> Company Email-Id <span class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input placeholder="Company Email-Id" name="companyEmail" class="form-control" id="companyEmail"> 
										<label for="companyEmail" class="error"></label>
									</div>
								</div>
								<div class="row mt-3 ">
									<div class="col-3">
										<label for="companyPassword"> Company Password <span class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input placeholder="Company Password" name="companyPassword" class="form-control" id="companyPassword" type="password">
										<label for="companyPassword" class="error"></label>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-3">
										<label for="industry" class="form-label">Industry <span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<select class="form-select" name="industry" id="industry">
											<option value="0">Select One</option>
											<option value="New Delhi">New Delhi</option>
											<option value="Istanbul">Istanbul</option>
											<option value="Jakarta">Jakarta</option>

										</select> <label for="industry" class="error"></label>
									</div>
								</div>
								<div class="row mt-3">
									<div class="col-3 ">
										<label for="other" class="form-label">Other</label>
									</div>
									<div class="col-6">
										<input placeholder="Enter industry-type" name="other" class="form-control" id="other"> 
										<label for="other" class="error"></label>
									</div>
								</div>

								<div class="row mt-3 ">
									<div class="col-3">
										<label for="companyPassword"> Company Logo <span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input id="imageUpload" type="file" name="imageUpload"
											placeholder="Photo" capture class="form-control"> <label
											for="imageUpload" class="error"></label>
									</div>
								</div>


							</div>
						</div>


						<div class="tab">
							<h5 class="text-left ms-3">Address Details:</h5>
							<div class="container  mt-3">
								<div class="row">
									<div class="col-3">
										<label for="addressLineOne"> Address Line 1<span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input placeholder="Enter address line 1"
											name="addressLineOne" class="form-control"
											id="addressLineOne"> <label for="addressLineOne"
											class="error"></label>
									</div>
								</div>



								<div class="row mt-3">
									<div class="col-3">
										<label for="addressLineTwo"> Address Line 2</label>
									</div>
									<div class="col-6">
										<input placeholder="Enter address line 2"
											name="addressLineTwo" class="form-control"
											id="addressLineTwo"> <label for="addressLineTwo"
											class="error"></label>
									</div>
								</div>


								<div class="row mt-3">
									<div class="col-3">
										<label for="country" class="form-label">Country <span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<select class="form-select" name="country" id="country">
											<option value="0">Select Country</option>
											<option value="India">India</option>
											<option value="Pakistan">Pakistan</option>
										</select> <label for="country" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="state" class="form-label">State <span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<select class="form-select" name="state" id="state">
											<option value="0">Select State</option>
											<option value="Maharashtra">Maharashtra</option>
											<option value="Nagpur">Nagpur</option>
										</select> <label for="state" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="city" class="form-label">City <span
											class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<select class="form-select" name="city" id="city">
											<option value="0">Select City</option>
											<option value="Thane">Thane</option>
											<option value="Pune">Pune</option>
										</select> <label for="city" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="pincode" class="form-label">Pincode <span class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<input placeholder="Enter pincode" name="pincode" class="form-control" id="pincode" type="number"> 
										<label 	for="pincode" class="error"></label>
									</div>
								</div>

							</div>
						</div>

						<div class="tab">
							<h5 class="text-left ms-3">Contact Details:</h5>
							<div class="container  mt-3">
								<div class="row">
									<div class="col-3">
										<label for="contactPersonName"> Contact Person Name: <span class="text-danger">*</span></label> 
										<label for="contactPersonName" class="text-muted fs-6"> (Enter HR or director) </label>

									</div>
									<div class="col-6">
										<input placeholder="Enter contact name" name="contactPersonName" class="form-control" id="contactPersonName">
										 <label for="contactPersonName" class="error"></label>
									</div>
								</div>



								<div class="row mt-3">
									<div class="col-3">
										<label for="designation"> Designation</label>
									</div>
									<div class="col-6">
										<input placeholder="Enter designation" name="designation" class="form-control" id="designation">
										 <label for="Designation" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="phoneNumber"> Phone Number <span class="text-danger">*</span>
										</label>
									</div>
									<div class="col-6">
										<input placeholder="Enter phone number" name="phoneNumber" class="form-control" id="phoneNumber" type="number">
										<label for="phoneNumber" class="error"></label>
									</div>
								</div>




								<div class="row mt-3">
									<div class="col-3">
										<label for="alternateEmailId"> Alternate Email-Id</label>
									</div>
									<div class="col-6">
										<input placeholder="Enter email-id" name="alternateEmailId" class="form-control" id="alternateEmailId">
										<label for="alternateEmailId" class="error"></label>
									</div>
								</div>
                       	</div>
						</div>


						<div class="tab">
							<h5 class="text-left ms-3">GST Details:</h5>
							<div class="container  mt-3">
								<div class="row">

									<div class="col-3">
										<label for="alternateGSTRegistered"> GST Registered</label> <span  class="text-danger">*</span>
									</div>

									<div class="col-6">
										<div class="row">
											<div class="d-flex">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" value="yes">
													<label class="form-check-label me-3" for="flexRadioDefault1">Yes </label>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" value="No">
													<label class="form-check-label" for="flexRadioDefault2">No</label>
												</div>
											</div>
											<div>
												<label id="flexRadioDefault-error" class="error" for="flexRadioDefault"></label>
											</div>
										</div>

									</div>

								</div>
								<div class="row mt-4 gstNumber">
									<div class="col-3">
										<label for="GSTNumber"> GST Number: <span class="text-danger">*</span></label>
									</div>

									<div class="col-6">
										<input placeholder="Enter GST number" name="GSTNumber" class="form-control" id="GSTNumber"> 
										<label for="GSTNumber" class="error"></label>
									</div>
								</div>
							</div>
						</div>


						<div class="tab">
							<h5 class="text-left ms-3">Bank Details:</h5>
							<div class="container  mt-3">
								<div class="row">
									<div class="col-3">
										<label for="accountHolderName"> Account Holder Name:</label> <span class="text-danger">*</span>
									</div>

									<div class="col-6">
										<input placeholder="Enter holder name" name="accountHolderName" class="form-control" id="accountHolderName"> 
										<label for="accountHolderName" class="error"></label>
									</div>
								</div>



								<div class="row mt-3">
									<div class="col-3">
										<label for="accountType" class="form-label">Account	Type <span class="text-danger">*</span> </label>
									</div>
									<div class="col-6">
										<select class="form-select" name="accountType" id="accountType">
											<option value="0">Select Account-Type</option>
											<option value="SavingAccount">Saving</option>
											<option value="CurrentAccount">Current</option>
											<option value="SalaryAccount">Salary</option>
										</select> 
										<label for="accountType" class="error"></label>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-3">
										<label for="accountNumber"> Account Number: <span class="text-danger">*</span></label>
									</div>

									<div class="col-6">
										<input placeholder="Enter account number" name="accountNumber" class="form-control" id="accountNumber"> 
										<label for="accountNumber" class="error"></label>
									</div>
								</div>

								<div class="row mt-4">
									<div class="col-3">
										<label for="ifscCode"> IFSC Code: <span class="text-danger">*</span></label>
									</div>

									<div class="col-6">
										<input placeholder="Enter IFSC code" name="ifscCode" class="form-control" id="ifscCode"> 
										<label for="ifscCode" class="error"></label>
									</div>
								</div>

								<div class="row mt-3">
									<div class="col-3">
										<label for="branchName" class="form-label">Branch Name<span class="text-danger">*</span></label>
									</div>
									<div class="col-6">
										<select class="form-select" name="branchName" id="branchName">
											<option value="0">Select Branch-Name</option>
											<option value="SavingAccount">Thane</option>
											<option value="CurrentAccount">Mulund</option>
											<option value="SalaryAccount">Ghatkopar</option>
										</select> <label for="branchName" class="error"></label>
									</div>
								</div>



							</div>
						</div>


						<div class="tab">

							<div class="row mt-3 ">
								<div class="col-3">
									<label for="uploadDocuments"> Upload Documents <span class="text-danger">*</span></label>
								</div>
								<div class="col-6">
									<input id="uploadDocuments" type="file" name="uploadDocuments" placeholder="Photo" capture class="form-control" name="uploadDocuments"> 
									<label for="uploadDocuments" class="error"></label>
								</div>
							</div>

						</div>

						<div style="overflow: auto;">
							<div class="d-flex justify-content-between">
								<button type="button" class="btn btn-outline-dark" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
								<button type="button" class="btn btn-outline-primary" id="nextBtn" onclick="nextPrev(1)">Next</button>
							</div>
						</div>
					</div>


				</div>
			</form>
		</div>
	</div>
</main>
<%@include file="commonEnd.jsp"%>
<script type="text/javascript" src="assets/js/manageCompanyDetails.js"></script>



