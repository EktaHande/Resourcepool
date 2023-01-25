<%@include file="commonUpper.jsp"%>
<main class="main">
	<div class="">
		<div class="card-body">
			<form id="regEmployeeForm" action="#" method="post">
				<div class="d-flex flex-row-reverse justify-content-between">
					<div class="col-10 d-flex justify-content-between card p-3">
						<div class="tab">
							<div class="form-tab-content p-3">
								<h4 class="mb-4">
									<strong>Personal Details</strong>
								</h4>
								<hr />
								<div class="row m-0 p-0 justify-content-center">
									<div class="w-75">
										<div class="d-flex flex-wrap col-12 mb-3">
											<label for="employeeFirstName" class="col-12 col-md-3 my-auto">First Name<sup>*</sup></label>
											<div class="col-12 col-md-6">
												<input type="text" name="employeeFirstName" id="employeeFirstName" class="form-control col-12" placeholder="First Name" /> <label
													for="employeeFirstName" class="text-danger error"></label>
											</div>
										</div>
										<div class="d-flex flex-wrap col-12 mb-3">
											<label for="lastName" class="col-12 col-md-3 my-auto">Last Name<sup>*</sup></label>
											<div class="col-12 col-md-6">
												<input type="text" name="employeeLastName" id="employeeLastName" class="form-control col-12" placeholder="Last Name" /> <label
													for="employeeLastName" class="text-danger error"></label>
											</div>
										</div>
										<div class="d-flex flex-wrap col-12 mb-3">
											<label for="employeeEmail" class="col-12 col-md-3 my-auto">Email-Id<sup>*</sup></label>
											<div class="col-12 col-md-6">
												<input type="text" name="employeeEmail" id="employeeEmail" class="form-control col-12" placeholder="Email-Id" /> <label
													for="employeeEmail" class="text-danger error"></label>
											</div>
										</div>
										<div class="d-flex flex-wrap  col-12 mb-3">
											<label for="employeeMobile" class="col-12 col-md-3 my-auto">Mobile No<sup>*</sup></label>
											<div class="col-12 col-md-6">
												<input type="number" name="employeeMobile" id="employeeMobile" class="form-control col-12 no-e" placeholder="Mobile No" /> <label
													for="employeeMobile" class="text-danger error"></label>
											</div>
										</div>
										<div class="d-flex flex-wrap col-12 mb-3">
											<label for="employeDOB" class="col-12 col-md-3  my-auto">Date Of Birth<sup>*</sup></label>
											<div class="col-12 col-md-6 d-flex flex-wrap position-relative">
												<input type="text" name="employeeDOB" id="employeeDOB" class="form-control col-12" placeholder="dd/mm/yyyy" readonly="readonly" /> <label
													for="employeeDOB" class="text-danger error"></label>
											</div>
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
							<button type="button" class="btn btn-primary m-4 addEmploymentButton" data-bs-toggle="modal" data-bs-target="#AddEmploymentModel">
								<span class="mx-2 fs-5 fw-bold">+</span> Add Employment Detail
							</button>
							<div class="employmentTable"></div>
						</div>
						<div class="tab">
							<div class="form-content-tab p-3">
								<h4 class="mb-4">
									<strong>Education Details</strong>
								</h4>
								<hr />
								<!-- Modal trigger button -->
								<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#educationDetailForm">Add Education</button>
								<div class="educationTable"></div>
							</div>
						</div>
						<div class="tab">
							<div class="form-tab-content p-3">
								<h4 class="mb-4">
									<strong>Expertise Level</strong>
								</h4>
								<hr />
								<div class="d-flex gap-3 flex-wrap flex-column align-items-center expertiseLevelBigDiv">
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap">
											<div class="d-flex justify-content-center">
												<input type="radio" value="entrylevel" id="entrylevel" name="expertiseLevel" class="m-2 expertiseLevel" /> <label for="entrylevel"
													class="card-title m-0 text-center p-0 border-0">Entry Level</label>
											</div>
											<p class="card-text text-center mt-2">I am relatively new to this field</p>
										</div>
									</div>
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap">
											<div class="d-flex justify-content-center">
												<input type="radio" value="intermediateLevel" id="intermediateLevel" name="expertiseLevel" class="m-2 expertiseLevel" /> <label
													for="intermediateLevel" class="card-title m-0 text-center p-0 border-0">Intermediate</label>
											</div>
											<p class="card-text text-center mt-2">I have substantial experience in this field</p>
										</div>
									</div>
									<div class="container col-12 col-md-5">
										<div class="card-body rounded-3 border expertCard text-wrap">
											<div class="d-flex justify-content-center">
												<input type="radio" value="expertLevel" id="expertLevel" name="expertiseLevel" class="m-2 expertiseLevel" /> <label for="expertLevel"
													class="card-title m-0 text-center p-0 border-0">Expert</label>
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
								<div class="languagesTab">
									<div class="deleteLanguageTab deleteTab">
										<div class="row m-0 p-0">
											<div class="d-flex col-12 col-md-5 my-2 ">
												<label for="languages" class="col-4 my-auto"> Languages <sup class="text-danger">*</sup>
												</label>
												<div class="col-8 d-flex flex-wrap align-items-center">
													<select class="form-select languages" id="languages" name="languages" style="width: 100%">
														<option></option>
														<option value="English">English</option>
														<option value="Hindi">Hindi</option>
														<option value="Marathi">Marathi</option>
														<option value="Telugu">Telugu</option>
													</select> <label id="languages-error" class="error text-danger" for="languages"></label>
												</div>
											</div>
											<div class="d-flex col-12 col-md-5 my-2">
												<label for="languagesProficiency" class="col-4 my-auto"> Languages Proficiency <sup class="text-danger">*</sup>
												</label>
												<div class="col-8 d-flex flex-wrap align-items-center">
													<select class="form-select languagesProficiency" id="languagesProficiency" name="languagesProficiency" style="width: 100%">
														<option></option>
														<option value="basic">Basic</option>
														<option value="conversational">Conversational</option>
														<option value="fluent">Fluent</option>
														<option value="native">Native or Billingual</option>
													</select> <label id="languagesProficiency-error" class="error text-danger" for="languagesProficiency"></label>
												</div>
											</div>
											<div class="row m-0 p-0 col-md-2">
												<div class="col-md-6 my-3">
													<em class="ri-delete-bin-5-line fs-5 deleteYourLanguages"></em>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="d-flex">
									<button type="button" class="btn btn-primary m-2 addLanguages">
										<span class="mx-2 fs-5 fw-bold">+</span> Add Language
									</button>
								</div>
							</div>
						</div>
						<div class="tab">
							<div class="form-tab-content p-3 ">
								<h4 class="mb-4">
									<strong>Employee Rate</strong>
								</h4>
								<hr />
								<div class="d-flex ">
									<div class="col-9 d-flex flex-column">
										<label for="employeeHourRate">Hourly Rate<sup>*</sup></label> <strong class="text-secodary">Total amount client will see</strong>
									</div>
									<div class="col-3 d-flex">
										<input type="number" name="employeeHourRate" id="employeeHourRate" class="form-control" placeholder="0.0" /> <label for=""
											class="text-secondary my-auto fw-bold ms-3">/hr</label>
									</div>
								</div>
								<label for="employeeHourRate" class="mb-4 text-danger error"></label>
								<hr class="text-secondary" />
								<div class="d-flex ">
									<div class="col-9 d-flex flex-column">
										<label for="serviceFee">Company Service Fee<sup>*</sup></label> <strong class="text-secodary">The service fee is % when you begin a
											contract with new client</strong>
									</div>
									<div class="col-3 d-flex">
										<input type="number" name="serviceFee" id="serviceFee" class="form-control no-e" placeholder="0.0" /> <label for="serviceFee"
											class="text-secondary my-auto fw-bold ms-3">/hr</label>
									</div>
								</div>
								<label for="serviceFee" class="mb-4 text-danger error"></label>
								<hr class="text-secondary" />
								<div class="d-flex mb-4">
									<div class="col-9 d-flex flex-column">
										<label for="finalAmount">You will Recieve</label> <strong class="text-secodary">The estimated amount after you will recieve after
											service fees</strong>
									</div>
									<div class="col-3 d-flex">
										<input type="number" readonly="readonly" name="finalAmount" id="finalAmount" class="no-e form-control" placeholder="0.0" /> <label
											for="finalAmount" class="text-secondary my-auto fw-bold ms-3">/hr</label>
									</div>
								</div>
							</div>
						</div>
						<div class="tab">
							<div class="tab-form-content p-3">
								<h4 class="mb-4">
									<strong>Skill Details</strong>
								</h4>
								<hr />
								<div class="d-flex justify-content-center">
									<div class="w-75">
										<div class="row mb-3">
											<label for="resumeTitle" class="col-sm-3 col-form-label">Resume Title<sup>*</sup></label>
											<div class="col-sm-6">
												<input type="text" class="form-control" id="resumeTitle" name="resumeTitle" placeholder="Resume Title"> <label for="resumeTitle"
													class="error text-danger"></label>
											</div>
										</div>
										<div class="row mb-3">
											<label for="employeeskill" class="col-sm-3 col-form-label">Skills<sup>*</sup></label>
											<div class="col-sm-6">
												<select class="form-select" name="employeeskill" style="width: 100% !important;" id="employeeskill" multiple="multiple">
													<option value="java">java</option>
													<option value="pyhton">python</option>
													<option value="c#">C#</option>
													<option value="Ajax">Ajax</option>
													<option value="asp.net">Asp.net</option>
												</select> <label for="employeeskill" class="error text-danger"></label>
												<div>
													<label for="" class="fw-bold text-secondary mt-2">Selected Skills</label>
													<div class="col-sm-12 foo my-3" style="border: none;"></div>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<label for="employeeResume" class="col-sm-3 col-form-label">Upload Resume<sup>*</sup></label>
											<div class="col-sm-6">
												<input class="form-control" type="file" id="employeeResume" name="employeeResume"> <label for="employeeResume"
													class="error text-danger"></label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div style="overflow: auto;">
							<div class="d-flex justify-content-between">
								<button type="button" class="btn btn-outline-dark" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
								<button type="button" class="btn btn-outline-primary next" id="nextBtn" onclick="nextPrev(1)">Next</button>
							</div>
						</div>
					</div>
					<div class="col-2 d-flex flex-column custome-h justify-content-around">
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Personal Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Employement Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Education Qualifications</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex  text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Expertise Level</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Language</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Employee Rate</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
						<div class="d-flex text-secondary">
							<label for="" class="col-9 wiz-label"> <strong>Skill Details</strong>
							</label> <span class="step mx-2 text-white"> <em class="wizard-icon ri-check-fill"></em>
							</span>
						</div>
					</div>
				</div>
			</form>

			<!-- 			Modal for collecting data of employment details -->
			<div class="modal fade" id="AddEmploymentModel" tabindex="-1" aria-hidden="true">

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
												<input type="text" name="companyName" id="companyName" placeholder="Please enter company name" class="form-control col-12" /> <label
													id="companyName-error" class="error text-danger" for="companyName"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="currentLocation" class="col-4 my-auto"> Current Location <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="currentLocation" name="currentLocation" aria-label="Default select example" style="width: 100%">
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
												<input type="text" name="pincode" id="pincode" placeholder="Please enter pincode" class="form-control col-12" /> <label
													id="pincode-error" class="error text-danger" for="pincode"></label>
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
												<select class="form-select" id="industryType" name="industryType" style="width: 100%" aria-label="Default select example">
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
												<input type="text" name="totalWorkExperiance" id="totalWorkExperiance" placeholder="Please enter work experiance"
													class="form-control col-12" /> <label id="totalWorkExperiance-error" class="error text-danger" for="totalWorkExperiance"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="currentDesignation" class="col-4 my-auto"> Current Designation <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<select class="form-select" id="currentDesignation" name="currentDesignation" style="width: 100%" aria-label="Default select example">
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
												<input type="text" name="other" id="other" placeholder="Please enter other details if any" class="form-control col-12" /> <label
													id="other-error" class="error text-danger" for="other"></label>
											</div>
										</div>
									</div>
									<p class="fw-normal fs-4">Period</p>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3 position-relative">
											<label for="startDate" class="col-4 my-auto">Start Date</label>
											<div class="col-8 cust-datepick ">
												<input type="text" name="startDate" placeholder="Please select start date" readonly="readonly" id="startDate" class="form-control" />
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3 position-relative">
											<label for="endDate" class="col-4 my-auto">End Date</label>
											<div class="col-8 cust-datepick">
												<input type="text" name="endDate" placeholder="Please select end date" id="endDate" readonly="readonly" class="form-control" />
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="description" class="col-4 my-auto">Description</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="text" name="description" placeholder="Please enter description" id="description" class="form-control col-12" /> <label
													id="description-error" class="error" for="description"></label>
											</div>
										</div>
										<div class="d-flex col-12 col-md-6 mb-3">
											<label for="profile-photo" class="col-4 my-auto"> Profile Photo <sup class="text-danger">*</sup>
											</label>
											<div class="col-8 d-flex flex-wrap align-items-center">
												<input type="file" name="profilePhoto" id="profilePhoto" class="form-control col-12" /> <label id="profilePhoto-error"
													class="error text-danger" for="profilePhoto"></label>
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
			<!--Modal for collecting data of Education details -->
			<div class="modal fade" id="educationDetailForm" tabindex="-1" data-bs-backdrop="static" data-bs-keyboard="false" role="dialog"
				aria-labelledby="modalTitleId" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="modalTitleId">Education Qualification</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body mx-3">
							<div class="form-tab-content p-3">
								<form action="" id="educationDetail">
									<div class="row  mb-3">
										<div class="col-12 col-md-6 d-flex flex-wrap">
											<label for="schoolName" class="col-12 col-md-4">School Name</label>
											<div class="col-12 col-md-8">
												<input type="text" name="schoolName" id="schoolName" class="form-control" placeholder="School Name" /> <label for="schoolName"
													class="text-danger error customehide"></label>
											</div>
										</div>
										<div class="col-12 col-md-6 d-flex flex-wrap">
											<label for="streamName" class="col-12 col-md-4">Stream</label>
											<div class="col-12 col-md-8">
												<div class="">
													<select class="form-select" name="streamName" id="streamName">
														<option value="">Select Stream</option>
														<option value="s-1">stream 1</option>
														<option value="s-2">stream 2</option>
														<option value="s-3">stream 3</option>
													</select> <label for="streamName" class=" error text-danger customehide"></label>
												</div>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-12 col-md-6 d-flex flex-wrap">
											<label for="degree" class="col-12 col-md-4">Degree</label>
											<div class="col-12 col-md-8">
												<div class="col-12">
													<select class="form-select" name="degree" id="degree">
														<option value="">Select Degree</option>
														<option value="d-1">Degree 1</option>
														<option value="d-2">Degree 2</option>
														<option value="d-3">Degree 3</option>
													</select>
												</div>
												<label for="degree" class="text-danger error customehide"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="d-flex flex-wrap col-12 col-md-6 mb-3 ">
											<label for="educationStartDate" class="col-12 col-md-4 my-auto">Start Date</label>
											<div class="col-12 col-md-8 d-flex flex-wrap  position-relative">
												<input type="text" name="educationStartDate" id="educationStartDate" readonly="readonly" class="form-control" placeholder="Start Date" />
												<label class="error text-danger customehide " for="educationStartDate"></label>
											</div>
										</div>
										<div class="col-12 col-md-6 mb-3 d-flex flex-wrap">
											<label for="educationEndDate" class="col-12 col-md-4 my-auto">End Date</label>
											<div class="col-12 col-md-8 d-flex flex-wrap  position-relative">
												<input type="text" name="educationEndDate" id="educationEndDate" readonly="readonly" class="form-control" placeholder="End Date" /> <label
													id="educationEndDate-error" class="error text-danger customehide " for="educationEndDate"></label>
											</div>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-md-6 col-12 d-flex flex-wrap">
											<label for="description" class="col-12 col-md-4">Description</label>
											<div class="col-12 col-md-8 ">
												<textarea class="form-control" name="description" id="description" placeholder="Description"></textarea>
												<label for="" class="error text-danger customehide"></label>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn btn-secondary close-modal" data-bs-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary saveEducation">Save</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="alert alert-success col-3" role="alert" id="success">Employee details has been added successfully!</div>
</main>
<%@include file="commonEnd.jsp"%>



