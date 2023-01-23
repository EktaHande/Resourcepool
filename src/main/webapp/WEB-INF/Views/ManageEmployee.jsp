<%@include file="commonUpper.jsp"%>

<main class="main">
	<div class="">
		<div class="card-body">
			<form id="regEmployeeForm" action="#">
				<div class="d-flex flex-row-reverse justify-content-between">
					<div class="col-10 d-flex justify-content-between card p-3">
						<div class="tab">
							<div class="form-tab-content p-3 w-100">
								<h4 class="mb-4">
									<strong>Personal Details</strong>
								</h4>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeeFirstName" class="col-3 my-auto"> FirstName <sup>*</sup>
										</label>
										<div class="col-9">
											<input type="text" name="employeeFirstName" id="employeeFirstName" class="form-control col-12" />
										</div>
									</div>
									<div class="d-flex col-6 ms-3">
										<label for="lastName" class="col-3 my-auto"> LastName <sup>*</sup>
										</label>
										<div class="col-9">
											<input type="text" name="employeeLastName" id="employeeLastName" class="form-control col-12" />
										</div>
									</div>
								</div>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeeEmail" class="col-3 my-auto"> Email <sup>*</sup>
										</label>
										<div class="col-9">
											<input type="text" name="employeeEmail" id="employeeEmail" class="form-control col-12" />
										</div>
									</div>
									<div class="d-flex col-6 ms-3">
										<label for="employeeMobile" class="col-3 my-auto"> Mobile No <sup>*</sup>
										</label>
										<div class="col-9">
											<input type="number" name="employeeMobile" id="employeeMobile" class="form-control col-12" />
										</div>
									</div>
								</div>
								<div class="d-flex mb-5">
									<div class="d-flex col-6">
										<label for="employeDOB" class="col-3 my-auto"> Date Of Birth <sup>*</sup>
										</label>
										<div class="col-9">
											<input type="text" name="employeeDOB" id="employeeDOB" class="form-control col-12" placeholder="dd/mm/yyyy" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab">
							<h4 class="m-4">
								<strong>Employment</strong>
							</h4>
							<hr />
							<button type="button" class="btn btn-primary m-4 addEmploymentButton" data-bs-toggle="modal" data-bs-target="#ExtralargeModal">
								<span class="mx-2 fs-5 fw-bold">+</span> Add Employment Detail
							</button>
							<div class="employmentTable"></div>
						</div>
						<div class="tab"></div>
						<div class="tab">
							<div class="form-tab-content p-3 w-100">
								<h4 class="mb-4">
									<strong>Expertise Level</strong>
								</h4>
								<hr />
								<div class="d-flex gap-3 flex-wrap flex-column align-items-center expertiseLevelBigDiv">
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap" style="background-color: #d6d5d2;">
											<div class="d-flex justify-content-center">
												<input type="radio" value="entrylevel" id="entrylevel" name="expertiseLevel" class="m-2 expertiseLevel" style="width: 20px; height: 20px" />
												<label for="entrylevel" class="card-title m-0 text-center p-0 border-0" style="background-color: #d6d5d2;">Entry Level</label>
											</div>
											<p class="card-text text-center mt-2">I am relatively new to this field</p>
										</div>
									</div>
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap" style="background-color: #d6d5d2;">
											<div class="d-flex justify-content-center">
												<input type="radio" value="intermediateLevel" id="intermediateLevel" name="expertiseLevel" class="m-2 expertiseLevel"
													style="width: 20px; height: 20px" /> <label for="intermediateLevel" class="card-title m-0 text-center p-0 border-0"
													style="background-color: #d6d5d2;">Intermediate</label>
											</div>
											<p class="card-text text-center mt-2">I have substantial experience in this field</p>
										</div>
									</div>
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap" style="background-color: #d6d5d2;">
											<div class="d-flex justify-content-center">
												<input type="radio" value="expertLevel" id="expertLevel" name="expertiseLevel" class="m-2 expertiseLevel"
													style="width: 20px; height: 20px" /> <label for="expertLevel" class="card-title m-0 text-center p-0 border-0"
													style="background-color: #d6d5d2;">Expert</label>
											</div>
											<p class="card-text text-center mt-2">I have comprehensive and deep expertise in this field</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab">
							<div class="form-tab-content p-3 w-100">
								<h4 class="mb-4">
									<strong>Languages</strong>
								</h4>
								<hr />
								<div class="row m-0 p-o flex-wrap justify-content-center">

									<div class="d-flex col-12 col-md-6 mb-3">
										<label for="languages" class="col-4 my-auto">Languages<sup class="text-danger">*</sup></label>
										<div class="col-8 d-flex flex-wrap align-items-center">
											<select class="form-select" id="languages" name="languages" style="width: 100%">
												<option value="">Please Select Language</option>
												<option value="English">English</option>
												<option value="Hindi">Hindi</option>
												<option value="Marathi">Marathi</option>
												<option value="Telugu">Telugu</option>
											</select> <label id="languages-error" class="error text-danger" for="languages"></label>
										</div>
									</div>
									<div class="languagesProficiencyDiv row m-0 p-0 flex-wrap justify-content-center">
										<div class="d-flex col-12 col-md-6 mb-3 ">
											<label for="languagesProficiency" class="col-4 my-auto">Languages Proficiency<sup class="text-danger">*</sup></label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="languagesProficiency" name="languagesProficiency" style="width: 100%">
													<option value="">Select Language Proficiency</option>
													<option value="basic">Basic</option>
													<option value="conversational">Conversational</option>
													<option value="fluent">Fluent</option>
													<option value="native"><h3>Native or Billingual
													</option>
												</select> <label id="languagesProficiency-error" class="error text-danger" for="languages"></label>
											</div>
										</div>
									</div>
								<div class="d-flex justify-content-center w-75">
									<button type="button" class="btn btn-primary m-2 addLanguages">
										<span class="mx-2 fs-5 fw-bold">+</span> Add Language
									</button>
								</div>
								</div>
							</div>
						</div>
						<div class="tab"></div>
						<div class="tab"></div>
						<div style="overflow: auto;">
							<div class="d-flex justify-content-between">
								<button type="button" class="btn btn-outline-dark" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
								<button type="button" class="btn btn-outline-primary next" id="nextBtn" onclick="nextPrev(1)">Next</button>
							</div>
						</div>
					</div>
					<div class="col-2 d-flex flex-column custome-h justify-content-around">
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Personal Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Employement Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Education Qualifications</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex  text-secondary">
							<label for="" class="col-9"> <strong>Expertise Level</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Language</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Employee Rate</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9"> <strong>Skill Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
					</div>
				</div>
			</form>

			<!-- 			Modal for collecting data of employment details -->
			<div class="modal fade" id="ExtralargeModal" tabindex="-1" style="display: none;" aria-hidden="true">
				<form action="" id="addEmployeeDetailForm">
					<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
						<div class="modal-content ">
							<div class="modal-header">
								<h4 class="mb-4">
									<strong>Employee Details</strong>
								</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body addEmployeeModal mx-3">
								<div class="form-tab-content p-3 w-100">

									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="companyName" class="col-4 my-auto"> Company Name <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="companyName" id="companyName" placeholder="Please enter company name" class="form-control col-12" /> <label id="companyName-error"
													class="error text-danger" for="companyName"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="currentLocation" class="col-4 my-auto"> Current Location <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="currentLocation" name="currentLocation" aria-label="Default select example">
													<option value="">Select your current location</option>
													<option value="mumbai">Mumbai</option>
													<option value="thane">Thane</option>
													<option value="delhi">Delhi</option>
													<option value="delhi">Kolkata</option>
												</select> <label id="currentLocation-error" class="error text-danger" for="currentLocation"> </label>
											</div>

										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="pincode" class="col-4 my-auto">Pincode</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="pincode" id="pincode" placeholder="Please enter pincode" class="form-control col-12" /> <label id="pincode-error" class="error text-danger"
													for="pincode"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="prefferedLocation" class="col-4 my-auto"> Preffered Location <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="prefferedLocation" name="prefferedLocation" style="width: 100%" multiple="multiple">
													<option value="mumbai">Mumbai</option>
													<option value="thane">Thane</option>
													<option value="delhi">Delhi</option>
													<option value="delhi">Kolkata</option>
												</select> <label id="prefferedLocation-error" class="error text-danger" for="prefferedLocation"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="industryType" class="col-4 my-auto"> Industry Type <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="industryType" name="industryType" aria-label="Default select example">
													<option value="">Select industry type</option>
													<option value="InformationTechnology">Information Technology(IT)</option>
													<option value="Manufacturing">Manufacturing</option>
													<option value="Production">Production</option>
												</select> <label class="text-danger error" for="industryType"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="totalWorkExperiance" class="col-4 my-auto" style="letter-spacing: 0.25px"> Total Work Experiance <sup
												class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="totalWorkExperiance" id="totalWorkExperiance" placeholder="Please enter work experiance" class="form-control col-12" /> <label
													id="totalWorkExperiance-error" class="error text-danger" for="totalWorkExperiance"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="currentDesignation" class="col-4 my-auto"> Current Designation <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="currentDesignation" name="currentDesignation" aria-label="Default select example">
													<option value="">Select your current designation</option>
													<option value="Software Engineer">Software Engineer</option>
													<option value="Test Analyst">Test Analyst</option>
													<option value="Business Analyst">Business Analyst</option>
												</select> <label id="currentDesignation-error" class="error text-danger" for="currentDesignation"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="other" class="col-4 my-auto">Other</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="other" id="other" placeholder="Please enter other details if any" class="form-control col-12" /> <label id="other-error" class="error text-danger" for="other"
													style=""></label>
											</div>
										</div>
									</div>
									<p class="fw-normal fs-4">Period</p>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3 position-relative">
											<label for="startDate" class="col-4 my-auto">Start Date</label>
											<div class="col-8 d-flex align-items-center">
												<input type="text" name="startDate" placeholder="Please select start date" readonly="readonly" id="startDate" class="form-control" />
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3 position-relative">
											<label for="endDate" class="col-4 my-auto">End Date</label>
											<div class="col-8 d-flex align-items-center">
												<input type="text" name="endDate" placeholder="Please select end date" id="endDate" readonly="readonly" class="form-control" />
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="description" class="col-4 my-auto">Description</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="description" placeholder="Please enter description" id="description" class="form-control col-12" /> <label id="description-error" class="error"
													for="description"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="profile-photo" class="col-4 my-auto"> Profile Photo <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="file" name="profilePhoto" id="profile-photo" class="form-control col-12" /> <label id="profile-photo-error"
													class="error text-danger" for="profile-photo"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-6 mb-3 d-flex flex-wrap align-items-center">
											<input type="radio" name="currentlyWorking" id="currentlyWorking" /> <label for="currentlyWorking" class="my-auto ms-2">Currently
												Working in this Company</label>
										</div>
									</div>
								</div>
							</div>
							<div class="modal-footer">
								<button type="reset" class="btn btn-secondary closeModal" data-bs-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary saveEmployeeDetails">Save changes</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</main>
<%@include file="commonEnd.jsp"%>

